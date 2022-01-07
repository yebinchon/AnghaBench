
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rwlock {int dummy; } ;


 int rw_rlock (struct rwlock*) ;

__attribute__((used)) static void
knlist_rw_rlock(void *arg)
{

 rw_rlock((struct rwlock *)arg);
}
