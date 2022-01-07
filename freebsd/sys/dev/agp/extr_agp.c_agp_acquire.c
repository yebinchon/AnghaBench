
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int AGP_ACQUIRE_KERNEL ;
 int agp_acquire_helper (int ,int ) ;

int
agp_acquire(device_t dev)
{
 return agp_acquire_helper(dev, AGP_ACQUIRE_KERNEL);
}
