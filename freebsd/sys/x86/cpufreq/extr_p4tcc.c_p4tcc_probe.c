
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 scalar_t__ resource_disabled (char*,int ) ;

__attribute__((used)) static int
p4tcc_probe(device_t dev)
{

 if (resource_disabled("p4tcc", 0))
  return (ENXIO);

 device_set_desc(dev, "CPU Frequency Thermal Control");
 return (0);
}
