
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 scalar_t__ prev_user_ioctl ;
 scalar_t__ sc_user_ioctl ;
 scalar_t__ vesa_ioctl ;

int
vesa_load_ioctl(void)
{
 if (prev_user_ioctl)
  return EBUSY;
 prev_user_ioctl = sc_user_ioctl;
 sc_user_ioctl = vesa_ioctl;
 return 0;
}
