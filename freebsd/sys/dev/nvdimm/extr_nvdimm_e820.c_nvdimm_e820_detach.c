
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int nvdimm_e820_remove_spas (int ) ;

__attribute__((used)) static int
nvdimm_e820_detach(device_t dev)
{
 int error;

 error = nvdimm_e820_remove_spas(dev);
 return (error);
}
