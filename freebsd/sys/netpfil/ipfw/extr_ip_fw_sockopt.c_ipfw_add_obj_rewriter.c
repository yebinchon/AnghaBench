
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opcode_obj_rewrite {int dummy; } ;


 int CTL3_LOCK () ;
 int CTL3_UNLOCK () ;
 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int compare_opcodes ;
 struct opcode_obj_rewrite* ctl3_rewriters ;
 size_t ctl3_rsize ;
 int free (struct opcode_obj_rewrite*,int ) ;
 struct opcode_obj_rewrite* malloc (int,int ,int) ;
 int memcpy (struct opcode_obj_rewrite*,struct opcode_obj_rewrite*,size_t) ;
 int qsort (struct opcode_obj_rewrite*,size_t,int,int ) ;

void
ipfw_add_obj_rewriter(struct opcode_obj_rewrite *rw, size_t count)
{
 size_t sz;
 struct opcode_obj_rewrite *tmp;

 CTL3_LOCK();

 for (;;) {
  sz = ctl3_rsize + count;
  CTL3_UNLOCK();
  tmp = malloc(sizeof(*rw) * sz, M_IPFW, M_WAITOK | M_ZERO);
  CTL3_LOCK();
  if (ctl3_rsize + count <= sz)
   break;


  free(tmp, M_IPFW);
 }


 sz = ctl3_rsize + count;
 memcpy(tmp, ctl3_rewriters, ctl3_rsize * sizeof(*rw));
 memcpy(&tmp[ctl3_rsize], rw, count * sizeof(*rw));
 qsort(tmp, sz, sizeof(*rw), compare_opcodes);

 if (ctl3_rewriters != ((void*)0))
  free(ctl3_rewriters, M_IPFW);
 ctl3_rewriters = tmp;
 ctl3_rsize = sz;

 CTL3_UNLOCK();
}
