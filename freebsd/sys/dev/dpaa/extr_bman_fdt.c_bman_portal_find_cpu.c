
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reg ;
typedef int phandle_t ;
typedef int pcell_t ;


 int OF_child (int) ;
 int OF_finddevice (char*) ;
 scalar_t__ OF_getprop (int,char*,int*,int) ;
 int OF_peer (int) ;

__attribute__((used)) static phandle_t
bman_portal_find_cpu(int cpu)
{
 phandle_t node;
 pcell_t reg;

 node = OF_finddevice("/cpus");
 if (node == -1)
  return (node);

 for (node = OF_child(node); node != 0; node = OF_peer(node)) {
  if (OF_getprop(node, "reg", &reg, sizeof(reg)) <= 0)
   continue;
  if (reg == cpu)
   return (node);
 }
 return (-1);
}
