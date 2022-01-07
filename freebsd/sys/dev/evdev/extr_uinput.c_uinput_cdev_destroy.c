
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_dev (int ) ;
 int uinput_cdev ;

__attribute__((used)) static int
uinput_cdev_destroy(void)
{

 destroy_dev(uinput_cdev);

 return (0);
}
