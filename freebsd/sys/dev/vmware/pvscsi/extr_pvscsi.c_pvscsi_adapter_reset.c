
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pvscsi_softc {int dev; } ;


 int DEBUG_PRINTF (int,int ,char*,int ) ;
 int PVSCSI_CMD_ADAPTER_RESET ;
 int device_printf (int ,char*) ;
 int pvscsi_read_intr_status (struct pvscsi_softc*) ;
 int pvscsi_write_cmd (struct pvscsi_softc*,int ,int *,int ) ;

__attribute__((used)) static void
pvscsi_adapter_reset(struct pvscsi_softc *sc)
{
 uint32_t val;

 device_printf(sc->dev, "Adapter Reset\n");

 pvscsi_write_cmd(sc, PVSCSI_CMD_ADAPTER_RESET, ((void*)0), 0);
 val = pvscsi_read_intr_status(sc);

 DEBUG_PRINTF(2, sc->dev, "adapter reset done: %u\n", val);
}
