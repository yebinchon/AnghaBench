
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {scalar_t__ nvram_src; int flash_type; int num_uarts; scalar_t__ pwr_ctrl; int aob; scalar_t__ pmu; } ;
struct chipc_softc {int dev; TYPE_1__ caps; } ;
typedef int * device_t ;


 scalar_t__ BHND_ATTACH_NATIVE ;
 scalar_t__ BHND_NVRAM_SRC_OTP ;
 scalar_t__ BHND_NVRAM_SRC_SPROM ;
 int * BUS_ADD_CHILD (int ,int ,char const*,int) ;
 int CHIPC_SFLASH_BASE ;
 int CHIPC_SFLASH_SIZE ;
 int CHIPC_SPROM_OTP ;
 int CHIPC_SPROM_OTP_SIZE ;
 int CHIPC_UART (int) ;
 int CHIPC_UART_MAX ;
 int CHIPC_UART_SIZE ;
 int ENXIO ;
 int RM_MAX_END ;
 scalar_t__ bhnd_get_attach_type (int ) ;
 char* chipc_flash_bus_name (int ) ;
 int chipc_set_irq_resource (struct chipc_softc*,int *,int,int ) ;
 int chipc_set_mem_resource (struct chipc_softc*,int *,int,int ,int ,int,int) ;
 int device_printf (int ,char*,...) ;
 int min (int ,int ) ;

__attribute__((used)) static int
chipc_add_children(struct chipc_softc *sc)
{
 device_t child;
 const char *flash_bus;
 int error;


 if (sc->caps.nvram_src == BHND_NVRAM_SRC_SPROM ||
     sc->caps.nvram_src == BHND_NVRAM_SRC_OTP)
 {
  child = BUS_ADD_CHILD(sc->dev, 0, "bhnd_nvram", -1);
  if (child == ((void*)0)) {
   device_printf(sc->dev, "failed to add nvram device\n");
   return (ENXIO);
  }


  error = chipc_set_mem_resource(sc, child, 0, CHIPC_SPROM_OTP,
      CHIPC_SPROM_OTP_SIZE, 0, 0);
  if (error) {
   device_printf(sc->dev, "failed to set OTP memory "
       "resource: %d\n", error);
   return (error);
  }
 }







 if (sc->caps.pmu && !sc->caps.aob) {
  child = BUS_ADD_CHILD(sc->dev, 0, "bhnd_pmu", -1);
  if (child == ((void*)0)) {
   device_printf(sc->dev, "failed to add pmu\n");
   return (ENXIO);
  }
 } else if (sc->caps.pwr_ctrl) {
  child = BUS_ADD_CHILD(sc->dev, 0, "bhnd_pwrctl", -1);
  if (child == ((void*)0)) {
   device_printf(sc->dev, "failed to add pwrctl\n");
   return (ENXIO);
  }
 }


 child = BUS_ADD_CHILD(sc->dev, 0, "gpio", -1);
 if (child == ((void*)0)) {
  device_printf(sc->dev, "failed to add gpio\n");
  return (ENXIO);
 }

 error = chipc_set_mem_resource(sc, child, 0, 0, RM_MAX_END, 0, 0);
 if (error) {
  device_printf(sc->dev, "failed to set gpio memory resource: "
      "%d\n", error);
  return (error);
 }


 if (bhnd_get_attach_type(sc->dev) != BHND_ATTACH_NATIVE)
  return (0);


 for (u_int i = 0; i < min(sc->caps.num_uarts, CHIPC_UART_MAX); i++) {
  int irq_rid, mem_rid;

  irq_rid = 0;
  mem_rid = 0;

  child = BUS_ADD_CHILD(sc->dev, 0, "uart", -1);
  if (child == ((void*)0)) {
   device_printf(sc->dev, "failed to add uart%u\n", i);
   return (ENXIO);
  }


  error = chipc_set_irq_resource(sc, child, irq_rid, 0);
  if (error) {
   device_printf(sc->dev, "failed to set uart%u irq %u\n",
       i, 0);
   return (error);
  }


  error = chipc_set_mem_resource(sc, child, mem_rid,
      CHIPC_UART(i), CHIPC_UART_SIZE, 0, 0);
  if (error) {
   device_printf(sc->dev, "failed to set uart%u memory "
       "resource: %d\n", i, error);
   return (error);
  }
 }


 flash_bus = chipc_flash_bus_name(sc->caps.flash_type);
 if (flash_bus != ((void*)0)) {
  int rid;

  child = BUS_ADD_CHILD(sc->dev, 0, flash_bus, -1);
  if (child == ((void*)0)) {
   device_printf(sc->dev, "failed to add %s device\n",
       flash_bus);
   return (ENXIO);
  }


  rid = 0;
  error = chipc_set_mem_resource(sc, child, rid, 0, RM_MAX_END, 1,
      1);
  if (error) {
   device_printf(sc->dev, "failed to set flash memory "
       "resource %d: %d\n", rid, error);
   return (error);
  }


  rid++;
  error = chipc_set_mem_resource(sc, child, rid,
      CHIPC_SFLASH_BASE, CHIPC_SFLASH_SIZE, 0, 0);
  if (error) {
   device_printf(sc->dev, "failed to set flash memory "
       "resource %d: %d\n", rid, error);
   return (error);
  }
 }

 return (0);
}
