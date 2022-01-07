
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devinfo_dev {int dd_name; } ;


 int devinfo_foreach_device_child (struct devinfo_dev*,int (*) (struct devinfo_dev*,void*),void*) ;
 int print_dev (struct devinfo_dev*) ;
 int printf (char*) ;
 scalar_t__ strcmp (int ,char const*) ;
 scalar_t__ vflag ;

__attribute__((used)) static int
print_path(struct devinfo_dev *dev, void *xname)
{
 const char *name = xname;
 int rv;

 if (strcmp(dev->dd_name, name) == 0) {
  print_dev(dev);
  if (vflag)
   printf("\n");
  return (1);
 }

 rv = devinfo_foreach_device_child(dev, print_path, xname);
 if (rv == 1) {
  printf(" ");
  print_dev(dev);
  if (vflag)
   printf("\n");
 }
 return (rv);
}
