
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Write; int Read; int IsSet; int UpdateSet; int type; } ;
struct physical {TYPE_1__ desc; } ;


 int PHYSICAL_DESCRIPTOR ;
 int physical_DescriptorRead ;
 int physical_DescriptorWrite ;
 int physical_IsSet ;
 int physical_UpdateSet ;

void
physical_SetDescriptor(struct physical *p)
{
  p->desc.type = PHYSICAL_DESCRIPTOR;
  p->desc.UpdateSet = physical_UpdateSet;
  p->desc.IsSet = physical_IsSet;
  p->desc.Read = physical_DescriptorRead;
  p->desc.Write = physical_DescriptorWrite;
}
