
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_entry {uintptr_t start; uintptr_t count; } ;
struct resource_list {int dummy; } ;
struct isa_device {uintptr_t id_vendorid; uintptr_t id_serial; uintptr_t id_logicalid; uintptr_t id_compatid; uintptr_t id_config_attr; uintptr_t id_pnp_csn; uintptr_t id_pnp_ldn; uintptr_t id_pnpbios_handle; struct resource_list id_resources; } ;
typedef int device_t ;


 struct isa_device* DEVTOISA (int ) ;
 int ENOENT ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int ,int) ;

__attribute__((used)) static int
isa_read_ivar(device_t bus, device_t dev, int index, uintptr_t * result)
{
 struct isa_device* idev = DEVTOISA(dev);
 struct resource_list *rl = &idev->id_resources;
 struct resource_list_entry *rle;

 switch (index) {
 case 131:
  rle = resource_list_find(rl, SYS_RES_IOPORT, 0);
  if (rle)
   *result = rle->start;
  else
   *result = -1;
  break;

 case 130:
  rle = resource_list_find(rl, SYS_RES_IOPORT, 1);
  if (rle)
   *result = rle->start;
  else
   *result = -1;
  break;

 case 133:
  rle = resource_list_find(rl, SYS_RES_IOPORT, 0);
  if (rle)
   *result = rle->count;
  else
   *result = 0;
  break;

 case 132:
  rle = resource_list_find(rl, SYS_RES_IOPORT, 1);
  if (rle)
   *result = rle->count;
  else
   *result = 0;
  break;

 case 140:
  rle = resource_list_find(rl, SYS_RES_MEMORY, 0);
  if (rle)
   *result = rle->start;
  else
   *result = -1;
  break;

 case 139:
  rle = resource_list_find(rl, SYS_RES_MEMORY, 1);
  if (rle)
   *result = rle->start;
  else
   *result = -1;
  break;

 case 138:
  rle = resource_list_find(rl, SYS_RES_MEMORY, 0);
  if (rle)
   *result = rle->count;
  else
   *result = 0;
  break;

 case 137:
  rle = resource_list_find(rl, SYS_RES_MEMORY, 1);
  if (rle)
   *result = rle->count;
  else
   *result = 0;
  break;

 case 143:
  rle = resource_list_find(rl, SYS_RES_IRQ, 0);
  if (rle)
   *result = rle->start;
  else
   *result = -1;
  break;

 case 142:
  rle = resource_list_find(rl, SYS_RES_IRQ, 1);
  if (rle)
   *result = rle->start;
  else
   *result = -1;
  break;

 case 145:
  rle = resource_list_find(rl, SYS_RES_DRQ, 0);
  if (rle)
   *result = rle->start;
  else
   *result = -1;
  break;

 case 144:
  rle = resource_list_find(rl, SYS_RES_DRQ, 1);
  if (rle)
   *result = rle->start;
  else
   *result = -1;
  break;

 case 128:
  *result = idev->id_vendorid;
  break;

 case 129:
  *result = idev->id_serial;
  break;

 case 141:
  *result = idev->id_logicalid;
  break;

 case 147:
  *result = idev->id_compatid;
  break;

 case 146:
  *result = idev->id_config_attr;
  break;

 case 135:
  *result = idev->id_pnp_csn;
  break;

 case 134:
  *result = idev->id_pnp_ldn;
  break;

 case 136:
  *result = idev->id_pnpbios_handle;
  break;

 default:
  return (ENOENT);
 }

 return (0);
}
