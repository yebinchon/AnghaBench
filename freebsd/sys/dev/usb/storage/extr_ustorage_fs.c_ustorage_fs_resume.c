
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_printf (int ,char*) ;

__attribute__((used)) static int
ustorage_fs_resume(device_t dev)
{
 device_printf(dev, "resuming\n");
 return (0);
}
