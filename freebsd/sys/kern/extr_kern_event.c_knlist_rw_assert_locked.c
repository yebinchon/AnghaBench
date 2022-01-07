
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rwlock {int dummy; } ;


 int RA_LOCKED ;
 int rw_assert (struct rwlock*,int ) ;

__attribute__((used)) static void
knlist_rw_assert_locked(void *arg)
{

 rw_assert((struct rwlock *)arg, RA_LOCKED);
}
