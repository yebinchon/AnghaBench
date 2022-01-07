
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventtimer {int (* et_deregister_cb ) (struct eventtimer*,int ) ;int et_sysctl; int et_arg; } ;


 int ET_LOCK () ;
 int ET_UNLOCK () ;
 int SLIST_REMOVE (int *,struct eventtimer*,int ,int ) ;
 int et_all ;
 int eventtimer ;
 int eventtimers ;
 int stub1 (struct eventtimer*,int ) ;
 int sysctl_remove_oid (int ,int,int) ;

int
et_deregister(struct eventtimer *et)
{
 int err = 0;

 if (et->et_deregister_cb != ((void*)0)) {
  if ((err = et->et_deregister_cb(et, et->et_arg)) != 0)
   return (err);
 }

 ET_LOCK();
 SLIST_REMOVE(&eventtimers, et, eventtimer, et_all);
 ET_UNLOCK();
 sysctl_remove_oid(et->et_sysctl, 1, 1);
 return (0);
}
