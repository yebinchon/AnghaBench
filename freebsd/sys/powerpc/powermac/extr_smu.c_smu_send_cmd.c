
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu_softc {int sc_cmd_phys; int sc_mailbox; int sc_bt; int sc_cmd_dmamap; int sc_dmatag; TYPE_1__* sc_cmd; struct smu_cmd* sc_cur_cmd; scalar_t__ sc_u3; int sc_mtx; } ;
struct smu_cmd {int data; int len; int cmd; } ;
typedef int device_t ;
struct TYPE_2__ {int data; int len; int cmd; } ;


 int BUS_DMASYNC_PREWRITE ;
 int GPIO_DDR_OUTPUT ;
 int MA_OWNED ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int ) ;
 struct smu_softc* device_get_softc (int ) ;
 int macgpio_write (int ,int ) ;
 int memcpy (int ,int ,int) ;
 int mtx_assert (int *,int ) ;
 scalar_t__ powerpc_pow_enabled ;
 int smu_doorbell ;

__attribute__((used)) static void
smu_send_cmd(device_t dev, struct smu_cmd *cmd)
{
 struct smu_softc *sc;

 sc = device_get_softc(dev);

 mtx_assert(&sc->sc_mtx, MA_OWNED);

 if (sc->sc_u3)
  powerpc_pow_enabled = 0;

 sc->sc_cur_cmd = cmd;


 sc->sc_cmd->cmd = cmd->cmd;
 sc->sc_cmd->len = cmd->len;
 memcpy(sc->sc_cmd->data, cmd->data, sizeof(cmd->data));
 bus_dmamap_sync(sc->sc_dmatag, sc->sc_cmd_dmamap, BUS_DMASYNC_PREWRITE);
 bus_space_write_4(sc->sc_bt, sc->sc_mailbox, 0, sc->sc_cmd_phys);


 __asm __volatile("sync; dcbf 0,%0; sync" :: "r"(sc->sc_cmd): "memory");


 macgpio_write(smu_doorbell, GPIO_DDR_OUTPUT);
}
