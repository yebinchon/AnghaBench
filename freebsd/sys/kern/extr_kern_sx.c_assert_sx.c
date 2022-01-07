
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx {int dummy; } ;
struct lock_object {int dummy; } ;


 int sx_assert (struct sx const*,int) ;

void
assert_sx(const struct lock_object *lock, int what)
{

 sx_assert((const struct sx *)lock, what);
}
