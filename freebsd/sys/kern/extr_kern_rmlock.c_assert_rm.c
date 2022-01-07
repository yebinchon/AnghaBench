
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmlock {int dummy; } ;
struct lock_object {int dummy; } ;


 int rm_assert (struct rmlock const*,int) ;

__attribute__((used)) static void
assert_rm(const struct lock_object *lock, int what)
{

 rm_assert((const struct rmlock *)lock, what);
}
