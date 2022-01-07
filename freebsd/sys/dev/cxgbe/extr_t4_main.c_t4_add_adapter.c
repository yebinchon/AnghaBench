
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int SLIST_INSERT_HEAD (int *,struct adapter*,int ) ;
 int link ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int t4_list ;
 int t4_list_lock ;

void
t4_add_adapter(struct adapter *sc)
{
 sx_xlock(&t4_list_lock);
 SLIST_INSERT_HEAD(&t4_list, sc, link);
 sx_xunlock(&t4_list_lock);
}
