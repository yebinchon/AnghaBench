
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_driver_t ;


 int EINVAL ;
 int SLIST_INSERT_HEAD (int *,int *,int ) ;
 scalar_t__ SLIST_NEXT (int *,int ) ;
 int keyboard_drivers ;
 int link ;

int
kbd_add_driver(keyboard_driver_t *driver)
{
 if (SLIST_NEXT(driver, link))
  return (EINVAL);
 SLIST_INSERT_HEAD(&keyboard_drivers, driver, link);
 return (0);
}
