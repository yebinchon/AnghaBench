
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_NOWILDCARD ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int smbus_get_addr (int ) ;

__attribute__((used)) static int
smb_probe(device_t dev)
{
 if (smbus_get_addr(dev) != -1)
  return (ENXIO);

 device_set_desc(dev, "SMBus generic I/O");
 return (BUS_PROBE_NOWILDCARD);
}
