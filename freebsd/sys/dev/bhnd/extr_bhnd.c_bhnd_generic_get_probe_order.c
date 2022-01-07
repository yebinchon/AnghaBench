
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
 int BHND_PROBE_BUS ;
 int BHND_PROBE_CPU ;
 int BHND_PROBE_DEFAULT ;
 int BHND_PROBE_ORDER_EARLY ;
 int BHND_PROBE_ORDER_FIRST ;
 int BHND_PROBE_ORDER_LAST ;
 int BHND_PROBE_ORDER_LATE ;
 int BHND_PROBE_RESOURCE ;
 int BHND_PROBE_ROOT ;
 int bhnd_bus_find_hostb_device (int ) ;
 int bhnd_get_class (int ) ;

int
bhnd_generic_get_probe_order(device_t dev, device_t child)
{
 switch (bhnd_get_class(child)) {
 case 148:


  return (BHND_PROBE_ROOT + BHND_PROBE_ORDER_FIRST);

 case 147:

 case 134:
  return (BHND_PROBE_BUS + BHND_PROBE_ORDER_EARLY);

 case 131:
  return (BHND_PROBE_BUS + BHND_PROBE_ORDER_LATE);

 case 132:
  return (BHND_PROBE_BUS + BHND_PROBE_ORDER_LAST);

 case 146:
  return (BHND_PROBE_CPU + BHND_PROBE_ORDER_FIRST);

 case 133:

 case 140:
  return (BHND_PROBE_CPU + BHND_PROBE_ORDER_EARLY);

 case 139:
  return (BHND_PROBE_RESOURCE + BHND_PROBE_ORDER_EARLY);

 case 136:
 case 135:
 case 137:
 case 145:
 case 144:
 case 143:
 case 130:
 case 129:
 case 128:
 case 142:
 case 138:
 case 141:
  if (bhnd_bus_find_hostb_device(dev) == child)
   return (BHND_PROBE_ROOT + BHND_PROBE_ORDER_EARLY);

  return (BHND_PROBE_DEFAULT);
 default:
  return (BHND_PROBE_DEFAULT);
 }
}
