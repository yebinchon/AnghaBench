
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devinfo_dev {int dummy; } ;


 int DEVINFO_ROOT_DEVICE ;
 int acpi0_check ;
 int devinfo_foreach_device_child (struct devinfo_dev*,int ,int *) ;
 int devinfo_free () ;
 struct devinfo_dev* devinfo_handle_to_device (int ) ;
 int devinfo_init () ;

__attribute__((used)) static int
acpi0_present(void)
{
 struct devinfo_dev *root;
 int found;

 found = 0;
 devinfo_init();
 root = devinfo_handle_to_device(DEVINFO_ROOT_DEVICE);
 if (root != ((void*)0))
  found = devinfo_foreach_device_child(root, acpi0_check, ((void*)0));
 devinfo_free();
 return found;
}
