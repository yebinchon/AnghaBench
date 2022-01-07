
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rwlock {int dummy; } ;
struct lock_object {int dummy; } ;


 int rw_assert (struct rwlock const*,int) ;

void
assert_rw(const struct lock_object *lock, int what)
{

 rw_assert((const struct rwlock *)lock, what);
}
