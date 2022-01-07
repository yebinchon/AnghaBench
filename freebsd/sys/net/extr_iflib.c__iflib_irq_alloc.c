
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int dummy; } ;
typedef TYPE_1__* if_irq_t ;
typedef TYPE_2__* if_ctx_t ;
typedef int * driver_intr_t ;
typedef int * driver_filter_t ;
typedef int device_t ;
struct TYPE_6__ {int ifc_flags; int ifc_dev; } ;
struct TYPE_5__ {void* ii_tag; struct resource* ii_res; } ;


 int ENOMEM ;
 int IFC_LEGACY ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int KASSERT (int,char*) ;
 int MPASS (int) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_describe_intr (int ,struct resource*,void*,char*,char const*) ;
 int bus_setup_intr (int ,struct resource*,int,int *,int *,void*,void**) ;
 int device_printf (int ,char*,int,char const*,...) ;

__attribute__((used)) static int
_iflib_irq_alloc(if_ctx_t ctx, if_irq_t irq, int rid,
   driver_filter_t filter, driver_intr_t handler, void *arg,
   const char *name)
{
 struct resource *res;
 void *tag = ((void*)0);
 device_t dev = ctx->ifc_dev;
 int flags, i, rc;

 flags = RF_ACTIVE;
 if (ctx->ifc_flags & IFC_LEGACY)
  flags |= RF_SHAREABLE;
 MPASS(rid < 512);
 i = rid;
 res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &i, flags);
 if (res == ((void*)0)) {
  device_printf(dev,
      "failed to allocate IRQ for rid %d, name %s.\n", rid, name);
  return (ENOMEM);
 }
 irq->ii_res = res;
 KASSERT(filter == ((void*)0) || handler == ((void*)0), ("filter and handler can't both be non-NULL"));
 rc = bus_setup_intr(dev, res, INTR_MPSAFE | INTR_TYPE_NET,
      filter, handler, arg, &tag);
 if (rc != 0) {
  device_printf(dev,
      "failed to setup interrupt for rid %d, name %s: %d\n",
       rid, name ? name : "unknown", rc);
  return (rc);
 } else if (name)
  bus_describe_intr(dev, res, tag, "%s", name);

 irq->ii_tag = tag;
 return (0);
}
