
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;
typedef int * eventhandler_tag ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int * EVENTHANDLER_REGISTER (int ,int ,int ,int) ;


 int clone_cleanup (int *) ;
 int clone_setup (int *) ;
 int dev_clone ;
 int kbd_add_driver (int *) ;
 int kbd_delete_driver (int *) ;
 int vkbd_dev_clone ;
 int vkbd_dev_clones ;
 int vkbd_kbd_driver ;

__attribute__((used)) static int
vkbd_modevent(module_t mod, int type, void *data)
{
 static eventhandler_tag tag;

 switch (type) {
 case 129:
  clone_setup(&vkbd_dev_clones);
  tag = EVENTHANDLER_REGISTER(dev_clone, vkbd_dev_clone, 0, 1000);
  if (tag == ((void*)0)) {
   clone_cleanup(&vkbd_dev_clones);
   return (ENOMEM);
  }
  kbd_add_driver(&vkbd_kbd_driver);
  break;

 case 128:
  kbd_delete_driver(&vkbd_kbd_driver);
  EVENTHANDLER_DEREGISTER(dev_clone, tag);
  clone_cleanup(&vkbd_dev_clones);
  break;

 default:
  return (EOPNOTSUPP);
 }

 return (0);
}
