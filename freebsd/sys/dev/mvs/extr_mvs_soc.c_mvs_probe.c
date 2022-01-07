
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int device_t ;
typedef int buf ;
struct TYPE_2__ {scalar_t__ id; scalar_t__ rev; char* name; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc_copy (int ,char*) ;
 TYPE_1__* mvs_ids ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;
 int snprintf (char*,int,char*,char*) ;
 int soc_id (scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int
mvs_probe(device_t dev)
{
 char buf[64];
 int i;
 uint32_t devid, revid;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (!ofw_bus_is_compatible(dev, "mrvl,sata"))
  return (ENXIO);

 soc_id(&devid, &revid);
 for (i = 0; mvs_ids[i].id != 0; i++) {
  if (mvs_ids[i].id == devid &&
      mvs_ids[i].rev <= revid) {
   snprintf(buf, sizeof(buf), "%s SATA controller",
       mvs_ids[i].name);
   device_set_desc_copy(dev, buf);
   return (BUS_PROBE_DEFAULT);
  }
 }
 return (ENXIO);
}
