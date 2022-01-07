
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipfw_sopt_handler {int dummy; } ;


 int CTL3_LOCK () ;
 int CTL3_UNLOCK () ;
 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int compare_sh ;
 int ctl3_gencnt ;
 struct ipfw_sopt_handler* ctl3_handlers ;
 size_t ctl3_hsize ;
 int free (struct ipfw_sopt_handler*,int ) ;
 struct ipfw_sopt_handler* malloc (int,int ,int) ;
 int memcpy (struct ipfw_sopt_handler*,struct ipfw_sopt_handler*,size_t) ;
 int qsort (struct ipfw_sopt_handler*,size_t,int,int ) ;

void
ipfw_add_sopt_handler(struct ipfw_sopt_handler *sh, size_t count)
{
 size_t sz;
 struct ipfw_sopt_handler *tmp;

 CTL3_LOCK();

 for (;;) {
  sz = ctl3_hsize + count;
  CTL3_UNLOCK();
  tmp = malloc(sizeof(*sh) * sz, M_IPFW, M_WAITOK | M_ZERO);
  CTL3_LOCK();
  if (ctl3_hsize + count <= sz)
   break;


  free(tmp, M_IPFW);
 }


 sz = ctl3_hsize + count;
 memcpy(tmp, ctl3_handlers, ctl3_hsize * sizeof(*sh));
 memcpy(&tmp[ctl3_hsize], sh, count * sizeof(*sh));
 qsort(tmp, sz, sizeof(*sh), compare_sh);

 if (ctl3_handlers != ((void*)0))
  free(ctl3_handlers, M_IPFW);
 ctl3_handlers = tmp;
 ctl3_hsize = sz;
 ctl3_gencnt++;

 CTL3_UNLOCK();
}
