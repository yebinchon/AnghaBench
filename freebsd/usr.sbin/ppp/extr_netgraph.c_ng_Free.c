
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct physical {int handler; } ;
struct ngdevice {int cs; } ;


 int close (int) ;
 struct ngdevice* device2ng (int ) ;
 int free (struct ngdevice*) ;
 int physical_SetDescriptor (struct physical*) ;

__attribute__((used)) static void
ng_Free(struct physical *p)
{
  struct ngdevice *dev = device2ng(p->handler);

  physical_SetDescriptor(p);
  if (dev->cs != -1)
    close(dev->cs);
  free(dev);
}
