
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct cbb_intrhand {int cookie; } ;
typedef int device_t ;


 int BUS_TEARDOWN_INTR (int ,int ,struct resource*,int ) ;
 int M_DEVBUF ;
 int device_get_parent (int ) ;
 int free (struct cbb_intrhand*,int ) ;

int
cbb_teardown_intr(device_t dev, device_t child, struct resource *irq,
    void *cookie)
{
 struct cbb_intrhand *ih;
 int err;


 ih = (struct cbb_intrhand *) cookie;
 err = BUS_TEARDOWN_INTR(device_get_parent(dev), child, irq,
     ih->cookie);
 if (err != 0)
  return (err);
 free(ih, M_DEVBUF);
 return (0);
}
