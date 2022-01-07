
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int cluster_anon ;

__attribute__((used)) static bool
clustering_anon_allowed(vm_offset_t addr)
{

 switch (cluster_anon) {
 case 0:
  return (0);
 case 1:
  return (addr == 0);
 case 2:
 default:
  return (1);
 }
}
