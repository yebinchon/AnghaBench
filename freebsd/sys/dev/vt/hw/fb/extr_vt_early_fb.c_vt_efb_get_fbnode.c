
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type ;
typedef int stdout ;
typedef int phandle_t ;
typedef char ihandle_t ;


 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,char*,int) ;
 int OF_instance_to_package (char) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static phandle_t
vt_efb_get_fbnode()
{
 phandle_t chosen, node;
 ihandle_t stdout;
 char type[64];

 chosen = OF_finddevice("/chosen");
 OF_getprop(chosen, "stdout", &stdout, sizeof(stdout));
 node = OF_instance_to_package(stdout);
 if (node != -1) {

  OF_getprop(node, "device_type", type, sizeof(type));

  if (strcmp(type, "display") == 0)
   return (node);
 }

 node = OF_finddevice("screen");

 return (node);
}
