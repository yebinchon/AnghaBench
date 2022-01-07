
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opcode_obj_rewrite {scalar_t__ classifier; int opcode; } ;


 int CTL3_LOCK () ;
 int CTL3_UNLOCK () ;
 int M_IPFW ;
 struct opcode_obj_rewrite* ctl3_rewriters ;
 int ctl3_rsize ;
 scalar_t__ find_op_rw_range (int ,struct opcode_obj_rewrite**,struct opcode_obj_rewrite**) ;
 int free (struct opcode_obj_rewrite*,int ) ;
 int memmove (struct opcode_obj_rewrite*,struct opcode_obj_rewrite*,size_t) ;

int
ipfw_del_obj_rewriter(struct opcode_obj_rewrite *rw, size_t count)
{
 size_t sz;
 struct opcode_obj_rewrite *ctl3_max, *ktmp, *lo, *hi;
 int i;

 CTL3_LOCK();

 for (i = 0; i < count; i++) {
  if (find_op_rw_range(rw[i].opcode, &lo, &hi) != 0)
   continue;

  for (ktmp = lo; ktmp <= hi; ktmp++) {
   if (ktmp->classifier != rw[i].classifier)
    continue;

   ctl3_max = ctl3_rewriters + ctl3_rsize;
   sz = (ctl3_max - (ktmp + 1)) * sizeof(*ktmp);
   memmove(ktmp, ktmp + 1, sz);
   ctl3_rsize--;
   break;
  }

 }

 if (ctl3_rsize == 0) {
  if (ctl3_rewriters != ((void*)0))
   free(ctl3_rewriters, M_IPFW);
  ctl3_rewriters = ((void*)0);
 }

 CTL3_UNLOCK();

 return (0);
}
