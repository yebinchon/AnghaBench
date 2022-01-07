
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct pccard_ivar {struct resource_list resources; } ;
typedef int device_t ;


 struct pccard_ivar* PCCARD_IVAR (int ) ;
 int resource_list_delete (struct resource_list*,int,int) ;

__attribute__((used)) static void
pccard_delete_resource(device_t dev, device_t child, int type, int rid)
{
 struct pccard_ivar *devi = PCCARD_IVAR(child);
 struct resource_list *rl = &devi->resources;
 resource_list_delete(rl, type, rid);
}
