
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 char* iobus_get_name (int ) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
ata_iobus_probe(device_t dev)
{
 char *type = iobus_get_name(dev);

 if (strncmp(type, "ata", 3) != 0)
  return (ENXIO);

 device_set_desc(dev, "PSIM ATA Controller");
 return (0);
}
