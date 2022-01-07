
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx {int dummy; } ;


 int SA_XLOCKED ;
 int sx_assert (struct sx*,int ) ;

__attribute__((used)) static void
uinput_knl_assert_locked(void *arg)
{

 sx_assert((struct sx*)arg, SA_XLOCKED);
}
