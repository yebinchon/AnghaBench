
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgreg {int dummy; } ;


 int SLIST_REMOVE (int *,struct msgreg*,int ,int ) ;
 int free (struct msgreg*) ;
 int link ;
 int msgreg ;
 int msgreg_list ;

void
ng_unregister_cookie(void *dd)
{
 struct msgreg *d = dd;

 SLIST_REMOVE(&msgreg_list, d, msgreg, link);
 free(d);
}
