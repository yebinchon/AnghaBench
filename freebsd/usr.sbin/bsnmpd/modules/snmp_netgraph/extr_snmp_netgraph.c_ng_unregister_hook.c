
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datareg {int dummy; } ;


 int SLIST_REMOVE (int *,struct datareg*,int ,int ) ;
 int datareg ;
 int datareg_list ;
 int free (struct datareg*) ;
 int link ;

void
ng_unregister_hook(void *dd)
{
 struct datareg *d = dd;

 SLIST_REMOVE(&datareg_list, d, datareg, link);
 free(d);
}
