
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int * prev_user_ioctl ;
 scalar_t__ sc_user_ioctl ;
 scalar_t__ vesa_ioctl ;

int
vesa_unload_ioctl(void)
{
 if (sc_user_ioctl != vesa_ioctl)
  return EBUSY;
 sc_user_ioctl = prev_user_ioctl;
 prev_user_ioctl = ((void*)0);
 return 0;
}
