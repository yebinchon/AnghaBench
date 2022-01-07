
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int CUDA_DEVSTR ;
 int ENXIO ;
 int device_set_desc (int ,int ) ;
 char* ofw_bus_get_type (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
cuda_probe(device_t dev)
{
 const char *type = ofw_bus_get_type(dev);

 if (strcmp(type, "via-cuda") != 0)
                return (ENXIO);

 device_set_desc(dev, CUDA_DEVSTR);
 return (0);
}
