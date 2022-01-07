
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int pcib_release_msi (int ,int ,int,int*) ;

__attribute__((used)) static int
vmd_pcib_release_msi(device_t pcib, device_t dev, int count, int *irqs)
{

 return (pcib_release_msi(pcib, dev, count, irqs));
}
