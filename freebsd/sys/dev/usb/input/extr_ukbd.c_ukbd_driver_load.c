
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;




 int kbd_add_driver (int *) ;
 int kbd_delete_driver (int *) ;
 int ukbd_kbd_driver ;

__attribute__((used)) static int
ukbd_driver_load(module_t mod, int what, void *arg)
{
 switch (what) {
 case 129:
  kbd_add_driver(&ukbd_kbd_driver);
  break;
 case 128:
  kbd_delete_driver(&ukbd_kbd_driver);
  break;
 }
 return (0);
}
