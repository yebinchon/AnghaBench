
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_object {int dummy; } ;


 int panic (char*) ;

__attribute__((used)) static void
assert_lockmgr(const struct lock_object *lock, int what)
{

 panic("lockmgr locks do not support assertions");
}
