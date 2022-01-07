
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bcma_erom {int dummy; } ;
typedef int bhnd_port_type ;






 int BHND_PORT_AGENT ;
 int BHND_PORT_BRIDGE ;
 int BHND_PORT_DEVICE ;
 int EINVAL ;
 int EROM_LOG (struct bcma_erom*,char*,int) ;

__attribute__((used)) static int
bcma_erom_region_to_port_type(struct bcma_erom *erom, uint8_t region_type,
    bhnd_port_type *port_type)
{
 switch (region_type) {
 case 130:
  *port_type = BHND_PORT_DEVICE;
  return (0);
 case 131:
  *port_type = BHND_PORT_BRIDGE;
  return (0);
 case 129:
 case 128:
  *port_type = BHND_PORT_AGENT;
  return (0);
 default:
  EROM_LOG(erom, "unsupported region type %hhx\n",
   region_type);
  return (EINVAL);
 }
}
