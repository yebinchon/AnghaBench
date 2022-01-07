
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int boolean_t ;


 scalar_t__ OF_getproplen (int ,char*) ;

__attribute__((used)) static boolean_t
cpu_check_mmu(u_int id, phandle_t node, u_int addr_size, pcell_t *reg)
{


 if (OF_getproplen(node, "mmu-type") < 0)
  return (0);

 return (1);
}
