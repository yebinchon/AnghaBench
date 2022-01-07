
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct indent_arg {int indent; scalar_t__ arg; } ;
struct devinfo_res {int dr_device; } ;
struct devinfo_dev {int dummy; } ;


 struct devinfo_dev* devinfo_handle_to_device (int ) ;
 int print_resource (struct devinfo_res*) ;
 int printf (char*) ;

int
print_device_matching_resource(struct devinfo_res *res, void *arg)
{
 struct indent_arg *ia = (struct indent_arg *)arg;
 struct devinfo_dev *dev = (struct devinfo_dev *)ia->arg;
 int i;

 if (devinfo_handle_to_device(res->dr_device) == dev) {

  if (ia->indent == 0)
   return(1);
  for (i = 0; i < ia->indent; i++)
   printf(" ");
  print_resource(res);
  printf("\n");
 }
 return(0);
}
