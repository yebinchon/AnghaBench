
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
nfsmbsub_probe(device_t dev)
{

 device_set_desc(dev, "nForce2/3/4 MCP SMBus Controller");
 return (BUS_PROBE_DEFAULT);
}
