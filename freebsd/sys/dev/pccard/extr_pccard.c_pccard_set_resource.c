
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct pccard_ivar {struct resource_list resources; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;


 int EINVAL ;
 int ENOMEM ;
 struct pccard_ivar* PCCARD_IVAR (int ) ;
 int PCCARD_NDRQ ;
 int PCCARD_NIRQ ;
 int PCCARD_NMEM ;
 int PCCARD_NPORT ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int device_get_parent (int ) ;
 int resource_list_add (struct resource_list*,int,int,scalar_t__,scalar_t__,scalar_t__) ;
 int * resource_list_alloc (struct resource_list*,int ,int ,int,int*,scalar_t__,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int
pccard_set_resource(device_t dev, device_t child, int type, int rid,
    rman_res_t start, rman_res_t count)
{
 struct pccard_ivar *devi = PCCARD_IVAR(child);
 struct resource_list *rl = &devi->resources;

 if (type != SYS_RES_IOPORT && type != SYS_RES_MEMORY
     && type != SYS_RES_IRQ && type != SYS_RES_DRQ)
  return (EINVAL);
 if (rid < 0)
  return (EINVAL);
 if (type == SYS_RES_IOPORT && rid >= PCCARD_NPORT)
  return (EINVAL);
 if (type == SYS_RES_MEMORY && rid >= PCCARD_NMEM)
  return (EINVAL);
 if (type == SYS_RES_IRQ && rid >= PCCARD_NIRQ)
  return (EINVAL);
 if (type == SYS_RES_DRQ && rid >= PCCARD_NDRQ)
  return (EINVAL);

 resource_list_add(rl, type, rid, start, start + count - 1, count);
 if (((void*)0) != resource_list_alloc(rl, device_get_parent(dev), dev,
     type, &rid, start, start + count - 1, count, 0))
  return 0;
 else
  return ENOMEM;
}
