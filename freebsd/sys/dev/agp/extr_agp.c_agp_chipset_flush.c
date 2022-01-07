
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int AGP_CHIPSET_FLUSH (int ) ;

__attribute__((used)) static int
agp_chipset_flush(device_t dev)
{

 return (AGP_CHIPSET_FLUSH(dev));
}
