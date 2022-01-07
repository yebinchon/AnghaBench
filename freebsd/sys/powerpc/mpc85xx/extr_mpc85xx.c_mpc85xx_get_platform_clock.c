
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int phandle_t ;
typedef int freq ;


 int OF_finddevice (char*) ;
 int OF_getencprop (int ,char*,void*,int) ;

uint32_t
mpc85xx_get_platform_clock(void)
{
 phandle_t soc;
 static uint32_t freq;

 if (freq != 0)
  return (freq);

 soc = OF_finddevice("/soc");


 OF_getencprop(soc, "bus-frequency", (void *)&freq, sizeof(freq));

 return (freq);
}
