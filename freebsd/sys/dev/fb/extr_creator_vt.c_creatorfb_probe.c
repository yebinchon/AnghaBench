
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type ;
struct vt_device {int dummy; } ;
typedef int stdout ;
typedef int phandle_t ;
typedef int name ;
typedef char ihandle_t ;


 int CN_DEAD ;
 int CN_INTERNAL ;
 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,char*,int) ;
 int OF_instance_to_package (char) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
creatorfb_probe(struct vt_device *vd)
{
 phandle_t chosen, node;
 ihandle_t stdout;
 char type[64], name[64];

 chosen = OF_finddevice("/chosen");
 OF_getprop(chosen, "stdout", &stdout, sizeof(stdout));
 node = OF_instance_to_package(stdout);
 if (node == -1) {




  node = OF_finddevice("screen");
 }
 OF_getprop(node, "device_type", type, sizeof(type));
 if (strcmp(type, "display") != 0)
  return (CN_DEAD);

 OF_getprop(node, "name", name, sizeof(name));
 if (strcmp(name, "SUNW,ffb") != 0 && strcmp(name, "SUNW,afb") != 0)
  return (CN_DEAD);


 return (CN_INTERNAL);
}
