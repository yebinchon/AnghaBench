
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bhnd_pcie2_generic_suspend (int ) ;

__attribute__((used)) static int
bhnd_pcie2b_suspend(device_t dev)
{
 return (bhnd_pcie2_generic_suspend(dev));
}
