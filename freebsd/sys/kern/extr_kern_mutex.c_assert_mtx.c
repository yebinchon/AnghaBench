
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct lock_object {int dummy; } ;


 int LA_LOCKED ;
 int LA_XLOCKED ;
 int mtx_assert (struct mtx const*,int) ;

void
assert_mtx(const struct lock_object *lock, int what)
{
 if (what & LA_LOCKED) {
  what &= ~LA_LOCKED;
  what |= LA_XLOCKED;
 }
 mtx_assert((const struct mtx *)lock, what);
}
