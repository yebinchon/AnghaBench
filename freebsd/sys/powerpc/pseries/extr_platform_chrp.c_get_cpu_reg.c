
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int cell_t ;


 int OF_getencprop (int ,char*,int *,int) ;
 int OF_getproplen (int ,char*) ;
 int panic (char*) ;

__attribute__((used)) static void
get_cpu_reg(phandle_t cpu, cell_t *reg)
{
 int res;

 res = OF_getproplen(cpu, "reg");
 if (res != sizeof(cell_t))
  panic("Unexpected length for CPU property reg on Open Firmware\n");
 OF_getencprop(cpu, "reg", reg, res);
}
