
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_3__ {scalar_t__ chip_type; } ;
struct TYPE_4__ {TYPE_1__ cid; } ;


 scalar_t__ BHND_CHIPTYPE_SIBA ;
 int BUS_PROBE_SPECIFIC ;
 int ENXIO ;
 TYPE_2__* bcm_get_platform () ;
 int bhnd_set_default_bus_desc (int ,TYPE_1__*) ;
 int siba_probe (int ) ;

__attribute__((used)) static int
siba_nexus_probe(device_t dev)
{
 int error;

 if (bcm_get_platform()->cid.chip_type != BHND_CHIPTYPE_SIBA)
  return (ENXIO);

 if ((error = siba_probe(dev)) > 0)
  return (error);


 bhnd_set_default_bus_desc(dev, &bcm_get_platform()->cid);

 return (BUS_PROBE_SPECIFIC);
}
