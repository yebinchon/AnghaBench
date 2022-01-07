
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;




 int gpiokeys_kbd_driver ;
 int kbd_add_driver (int *) ;
 int kbd_delete_driver (int *) ;

__attribute__((used)) static int
gpiokeys_driver_load(module_t mod, int what, void *arg)
{
 switch (what) {
 case 129:
  kbd_add_driver(&gpiokeys_kbd_driver);
  break;
 case 128:
  kbd_delete_driver(&gpiokeys_kbd_driver);
  break;
 }
 return (0);
}
