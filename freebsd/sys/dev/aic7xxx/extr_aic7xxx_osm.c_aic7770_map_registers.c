
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct resource {int dummy; } ;
struct ahc_softc {int bsh; int tag; TYPE_1__* platform_data; int dev_softc; } ;
struct TYPE_2__ {int regs_res_id; struct resource* regs; int regs_res_type; } ;


 int ENOMEM ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;

int
aic7770_map_registers(struct ahc_softc *ahc, u_int unused_ioport_arg)
{
 struct resource *regs;
 int rid;

 rid = 0;
 regs = bus_alloc_resource_any(ahc->dev_softc, SYS_RES_IOPORT, &rid,
          RF_ACTIVE);
 if (regs == ((void*)0)) {
  device_printf(ahc->dev_softc, "Unable to map I/O space?!\n");
  return ENOMEM;
 }
 ahc->platform_data->regs_res_type = SYS_RES_IOPORT;
 ahc->platform_data->regs_res_id = rid;
 ahc->platform_data->regs = regs;
 ahc->tag = rman_get_bustag(regs);
 ahc->bsh = rman_get_bushandle(regs);
 return (0);
}
