
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_softc {int dev; } ;


 int DEBUG_PRINTF (int,int ,char*) ;
 int PVSCSI_CMD_RESET_BUS ;
 int device_printf (int ,char*) ;
 int pvscsi_process_cmp_ring (struct pvscsi_softc*) ;
 int pvscsi_write_cmd (struct pvscsi_softc*,int ,int *,int ) ;

__attribute__((used)) static void
pvscsi_bus_reset(struct pvscsi_softc *sc)
{

 device_printf(sc->dev, "Bus Reset\n");

 pvscsi_write_cmd(sc, PVSCSI_CMD_RESET_BUS, ((void*)0), 0);
 pvscsi_process_cmp_ring(sc);

 DEBUG_PRINTF(2, sc->dev, "bus reset done\n");
}
