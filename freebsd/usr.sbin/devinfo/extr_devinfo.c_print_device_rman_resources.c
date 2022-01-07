
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct indent_arg {int indent; } ;
struct devinfo_rman {char* dm_desc; } ;


 scalar_t__ devinfo_foreach_rman_resource (struct devinfo_rman*,int ,struct indent_arg*) ;
 int print_device_matching_resource ;
 int printf (char*,...) ;

int
print_device_rman_resources(struct devinfo_rman *rman, void *arg)
{
 struct indent_arg *ia = (struct indent_arg *)arg;
 int indent, i;

 indent = ia->indent;


 ia->indent = 0;
 if (devinfo_foreach_rman_resource(rman,
     print_device_matching_resource, ia) != 0) {


  for (i = 0; i < indent; i++)
   printf(" ");
  printf("%s:\n", rman->dm_desc);


  ia->indent = indent + 4;
  devinfo_foreach_rman_resource(rman,
      print_device_matching_resource, ia);
 }
 ia->indent = indent;
 return(0);
}
