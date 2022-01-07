
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCIB_POWER_FOR_SLEEP (int ,int ,int*) ;
 int device_get_parent (int ) ;

int
pcib_power_for_sleep(device_t pcib, device_t dev, int *pstate)
{
 device_t bus;

 bus = device_get_parent(pcib);
 return (PCIB_POWER_FOR_SLEEP(bus, dev, pstate));
}
