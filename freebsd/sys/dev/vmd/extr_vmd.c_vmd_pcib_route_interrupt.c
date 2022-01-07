
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int pcib_route_interrupt (int ,int ,int) ;

__attribute__((used)) static int
vmd_pcib_route_interrupt(device_t pcib, device_t dev, int pin)
{
 return (pcib_route_interrupt(pcib, dev, pin));
}
