
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int smu_doorbell ;

__attribute__((used)) static int
doorbell_attach(device_t dev)
{
 smu_doorbell = dev;
 return (0);
}
