
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;


 int akbd_kbd_driver ;
 int kbd_add_driver (int *) ;
 int kbd_delete_driver (int *) ;

__attribute__((used)) static int
akbd_modevent(module_t mod, int type, void *data)
{
 switch (type) {
 case 129:
  kbd_add_driver(&akbd_kbd_driver);
  break;

 case 128:
  kbd_delete_driver(&akbd_kbd_driver);
  break;

 default:
  return (EOPNOTSUPP);
 }

 return (0);
}
