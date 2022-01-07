
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int device_t ;
typedef int buf ;
struct TYPE_2__ {scalar_t__ id; char* name; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc_copy (int ,char*) ;
 scalar_t__ pci_get_devid (int ) ;
 TYPE_1__* siis_ids ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int
siis_probe(device_t dev)
{
 char buf[64];
 int i;
 uint32_t devid = pci_get_devid(dev);

 for (i = 0; siis_ids[i].id != 0; i++) {
  if (siis_ids[i].id == devid) {
   snprintf(buf, sizeof(buf), "%s SATA controller",
       siis_ids[i].name);
   device_set_desc_copy(dev, buf);
   return (BUS_PROBE_DEFAULT);
  }
 }
 return (ENXIO);
}
