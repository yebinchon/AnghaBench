
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_name (int ) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int
esp_probe(device_t dev)
{
 const char *name;

 name = ofw_bus_get_name(dev);
 if (strcmp("SUNW,fas", name) == 0) {
  device_set_desc(dev, "Sun FAS366 Fast-Wide SCSI");
         return (BUS_PROBE_DEFAULT);
 } else if (strcmp("esp", name) == 0) {
  device_set_desc(dev, "Sun ESP SCSI/Sun FAS Fast-SCSI");
         return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
