
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct smu_softc {int sc_mtx; TYPE_2__* sc_cur_cmd; int sc_cmdq; scalar_t__ sc_u3; TYPE_1__* sc_cmd; int sc_cmd_dmamap; int sc_dmatag; } ;
typedef void* device_t ;
struct TYPE_6__ {int data; int len; int cmd; } ;
struct TYPE_5__ {int data; int len; int cmd; } ;


 int BUS_DMASYNC_POSTREAD ;
 int GPIO_DATA ;
 int GPIO_DDR_OUTPUT ;
 int GPIO_LEVEL_RO ;
 TYPE_2__* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int cmd_q ;
 struct smu_softc* device_get_softc (void*) ;
 int macgpio_read (int ) ;
 int memcpy (int ,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int powerpc_pow_enabled ;
 int smu_doorbell ;
 int smu_send_cmd (void*,TYPE_2__*) ;
 int wakeup (TYPE_2__*) ;

__attribute__((used)) static void
smu_doorbell_intr(void *xdev)
{
 device_t smu;
 struct smu_softc *sc;
 int doorbell_ack;

 smu = xdev;
 doorbell_ack = macgpio_read(smu_doorbell);
 sc = device_get_softc(smu);

 if (doorbell_ack != (GPIO_DDR_OUTPUT | GPIO_LEVEL_RO | GPIO_DATA))
  return;

 mtx_lock(&sc->sc_mtx);

 if (sc->sc_cur_cmd == ((void*)0))
  goto done;


 __asm __volatile("dcbf 0,%0; sync" :: "r"(sc->sc_cmd) : "memory");

 bus_dmamap_sync(sc->sc_dmatag, sc->sc_cmd_dmamap, BUS_DMASYNC_POSTREAD);

 sc->sc_cur_cmd->cmd = sc->sc_cmd->cmd;
 sc->sc_cur_cmd->len = sc->sc_cmd->len;
 memcpy(sc->sc_cur_cmd->data, sc->sc_cmd->data,
     sizeof(sc->sc_cmd->data));
 wakeup(sc->sc_cur_cmd);
 sc->sc_cur_cmd = ((void*)0);
 if (sc->sc_u3)
  powerpc_pow_enabled = 1;

    done:

 if (STAILQ_FIRST(&sc->sc_cmdq) != ((void*)0)) {
  sc->sc_cur_cmd = STAILQ_FIRST(&sc->sc_cmdq);
  STAILQ_REMOVE_HEAD(&sc->sc_cmdq, cmd_q);
  smu_send_cmd(smu, sc->sc_cur_cmd);
 }

 mtx_unlock(&sc->sc_mtx);
}
