
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int pcib_alloc_msi (int ,int ,int,int,int*) ;

__attribute__((used)) static int
vmd_pcib_alloc_msi(device_t pcib, device_t dev, int count, int maxcount,
    int *irqs)
{
 return (pcib_alloc_msi(pcib, dev, count, maxcount, irqs));
}
