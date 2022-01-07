
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attached; } ;
struct ata_dbdma_channel {int dbdma; TYPE_1__ sc_ch; } ;
typedef int device_t ;


 int ata_suspend (int ) ;
 int dbdma_save_state (int ) ;
 struct ata_dbdma_channel* device_get_softc (int ) ;

__attribute__((used)) static int
ata_macio_suspend(device_t dev)
{
 struct ata_dbdma_channel *ch = device_get_softc(dev);
 int error;

 if (!ch->sc_ch.attached)
  return (0);

 error = ata_suspend(dev);
 dbdma_save_state(ch->dbdma);

 return (error);
}
