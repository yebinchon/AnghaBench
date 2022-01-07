
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int device_quiet (int ) ;

__attribute__((used)) static int
nexus_probe(device_t dev)
{

 device_quiet(dev);
 return (BUS_PROBE_GENERIC);
}
