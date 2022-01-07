
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_data {int rid_ioport; scalar_t__ res_ioport; int ppc_flags; scalar_t__ res_irq; int rid_irq; scalar_t__ res_drq; int rid_drq; int ppc_epp; int ppc_type; int ppc_mode; int ppc_model; int ppc_dev; void* ppc_dmachan; void* ppc_irq; void* ppc_base; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;


 short BIOS_MAX_PPC ;
 scalar_t__* BIOS_PORTS ;
 struct ppc_data* DEVTOSOFTC (int ) ;
 int ENXIO ;
 int GENERIC ;
 int IO_LPTSIZE_EXTENDED ;
 int IO_LPTSIZE_NORMAL ;
 int PPB_COMPATIBLE ;
 int PPC_TYPE_GENERIC ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 void* bus_alloc_resource_anywhere (int ,int ,int*,int ,int ) ;
 int bus_get_resource (int ,int ,int,scalar_t__*,int *) ;
 int bus_release_resource (int ,int ,int,scalar_t__) ;
 int bus_set_resource (int ,int ,int,scalar_t__,int ) ;
 int bzero (struct ppc_data*,int) ;
 int device_get_flags (int ) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ ppc_detect (struct ppc_data*,int) ;
 void* rman_get_start (scalar_t__) ;

int
ppc_probe(device_t dev, int rid)
{



 struct ppc_data *ppc;
 int error;
 rman_res_t port;




 ppc = DEVTOSOFTC(dev);
 bzero(ppc, sizeof(struct ppc_data));

 ppc->rid_ioport = rid;


 error = bus_get_resource(dev, SYS_RES_IOPORT, rid, &port, ((void*)0));
 ppc->res_ioport = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT,
            &ppc->rid_ioport,
            IO_LPTSIZE_EXTENDED,
            RF_ACTIVE);

 if (ppc->res_ioport != 0) {
  if (bootverbose)
   device_printf(dev, "using extended I/O port range\n");
 } else {

   ppc->res_ioport = bus_alloc_resource_anywhere(dev,
                SYS_RES_IOPORT,
              &ppc->rid_ioport,
              IO_LPTSIZE_NORMAL,
              RF_ACTIVE);
  if (ppc->res_ioport != 0) {
   if (bootverbose)
    device_printf(dev, "using normal I/O port range\n");
  } else {
   if (bootverbose)
    device_printf(dev, "cannot reserve I/O port range\n");
   goto error;
  }
 }

  ppc->ppc_base = rman_get_start(ppc->res_ioport);

 ppc->ppc_flags = device_get_flags(dev);

 if (!(ppc->ppc_flags & 0x20)) {
  ppc->res_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ,
            &ppc->rid_irq,
            RF_SHAREABLE);
  ppc->res_drq = bus_alloc_resource_any(dev, SYS_RES_DRQ,
            &ppc->rid_drq,
            RF_ACTIVE);
 }

 if (ppc->res_irq)
  ppc->ppc_irq = rman_get_start(ppc->res_irq);
 if (ppc->res_drq)
  ppc->ppc_dmachan = rman_get_start(ppc->res_drq);

 ppc->ppc_dev = dev;
 ppc->ppc_model = GENERIC;

 ppc->ppc_mode = PPB_COMPATIBLE;
 ppc->ppc_epp = (ppc->ppc_flags & 0x10) >> 4;

 ppc->ppc_type = PPC_TYPE_GENERIC;




 if (ppc_detect(ppc, ppc->ppc_flags & 0xf))
  goto error;

 return (0);

error:
 if (ppc->res_irq != 0) {
  bus_release_resource(dev, SYS_RES_IRQ, ppc->rid_irq,
         ppc->res_irq);
 }
 if (ppc->res_ioport != 0) {
  bus_release_resource(dev, SYS_RES_IOPORT, ppc->rid_ioport,
         ppc->res_ioport);
 }
 if (ppc->res_drq != 0) {
  bus_release_resource(dev, SYS_RES_DRQ, ppc->rid_drq,
         ppc->res_drq);
 }
 return (ENXIO);
}
