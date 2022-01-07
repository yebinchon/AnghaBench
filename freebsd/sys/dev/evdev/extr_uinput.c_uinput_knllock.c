
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx {int dummy; } ;


 int sx_xlock (struct sx*) ;

__attribute__((used)) static void
uinput_knllock(void *arg)
{
 struct sx *sx = arg;

 sx_xlock(sx);
}
