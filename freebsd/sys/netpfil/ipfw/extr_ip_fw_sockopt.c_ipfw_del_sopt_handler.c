
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipfw_sopt_handler {int handler; int version; int opcode; } ;


 int CTL3_LOCK () ;
 int CTL3_UNLOCK () ;
 int M_IPFW ;
 int ctl3_gencnt ;
 struct ipfw_sopt_handler* ctl3_handlers ;
 int ctl3_hsize ;
 struct ipfw_sopt_handler* find_sh (int ,int ,int ) ;
 int free (struct ipfw_sopt_handler*,int ) ;
 int memmove (struct ipfw_sopt_handler*,struct ipfw_sopt_handler*,size_t) ;

int
ipfw_del_sopt_handler(struct ipfw_sopt_handler *sh, size_t count)
{
 size_t sz;
 struct ipfw_sopt_handler *tmp, *h;
 int i;

 CTL3_LOCK();

 for (i = 0; i < count; i++) {
  tmp = &sh[i];
  h = find_sh(tmp->opcode, tmp->version, tmp->handler);
  if (h == ((void*)0))
   continue;

  sz = (ctl3_handlers + ctl3_hsize - (h + 1)) * sizeof(*h);
  memmove(h, h + 1, sz);
  ctl3_hsize--;
 }

 if (ctl3_hsize == 0) {
  if (ctl3_handlers != ((void*)0))
   free(ctl3_handlers, M_IPFW);
  ctl3_handlers = ((void*)0);
 }

 ctl3_gencnt++;

 CTL3_UNLOCK();

 return (0);
}
