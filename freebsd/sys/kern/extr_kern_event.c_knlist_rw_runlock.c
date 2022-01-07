
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rwlock {int dummy; } ;


 int rw_runlock (struct rwlock*) ;

__attribute__((used)) static void
knlist_rw_runlock(void *arg)
{

 rw_runlock((struct rwlock *)arg);
}
