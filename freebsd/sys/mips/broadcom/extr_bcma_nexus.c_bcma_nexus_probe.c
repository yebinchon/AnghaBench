
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_3__ {int chip_type; } ;
struct TYPE_4__ {TYPE_1__ cid; } ;





 int BUS_PROBE_SPECIFIC ;
 int ENXIO ;
 TYPE_2__* bcm_get_platform () ;
 int bcma_probe (int ) ;
 int bhnd_set_default_bus_desc (int ,TYPE_1__*) ;

__attribute__((used)) static int
bcma_nexus_probe(device_t dev)
{
 int error;

 switch (bcm_get_platform()->cid.chip_type) {
 case 130:
 case 129:
 case 128:
  break;
 default:
  return (ENXIO);
 }

 if ((error = bcma_probe(dev)) > 0)
  return (error);


 bhnd_set_default_bus_desc(dev, &bcm_get_platform()->cid);

 return (BUS_PROBE_SPECIFIC);
}
