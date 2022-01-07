
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;




 int hvkbd_kbd_driver ;
 int kbd_add_driver (int *) ;
 int kbd_delete_driver (int *) ;

int
hvkbd_driver_load(module_t mod, int what, void *arg)
{
 switch (what) {
 case 129:
  kbd_add_driver(&hvkbd_kbd_driver);
  break;
 case 128:
  kbd_delete_driver(&hvkbd_kbd_driver);
  break;
 }
 return (0);
}
