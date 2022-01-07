
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int device_t ;


 int pmu_intr (int ) ;

__attribute__((used)) static u_int
pmu_poll(device_t dev)
{
 pmu_intr(dev);
 return (0);
}
