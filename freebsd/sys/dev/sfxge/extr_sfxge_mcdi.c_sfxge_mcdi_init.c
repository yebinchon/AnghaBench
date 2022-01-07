
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int emt_logger; int emt_exception; int emt_ev_cpl; int emt_execute; int * emt_dma_mem; struct sfxge_softc* emt_context; } ;
struct sfxge_mcdi {scalar_t__ state; int mem; TYPE_1__ transport; } ;
struct sfxge_softc {int mcdi_logging; int dev; struct sfxge_mcdi mcdi; int * enp; } ;
typedef int efx_nic_t ;
typedef TYPE_1__ efx_mcdi_transport_t ;
typedef int efsys_mem_t ;


 int CTLFLAG_RW ;
 int KASSERT (int,char*) ;
 int MCDI_CTL_SDU_LEN_MAX_V2 ;
 int OID_AUTO ;
 scalar_t__ SFXGE_MCDI_INITIALIZED ;
 int SFXGE_MCDI_LOCK_DESTROY (struct sfxge_mcdi*) ;
 int SFXGE_MCDI_LOCK_INIT (struct sfxge_mcdi*,int ) ;
 scalar_t__ SFXGE_MCDI_UNINITIALIZED ;
 int SYSCTL_ADD_INT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int device_get_nameunit (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int efx_mcdi_init (int *,TYPE_1__*) ;
 int sfxge_dma_alloc (struct sfxge_softc*,int,int *) ;
 int sfxge_mcdi_ev_cpl ;
 int sfxge_mcdi_exception ;
 int sfxge_mcdi_execute ;
 int sfxge_mcdi_logger ;

int
sfxge_mcdi_init(struct sfxge_softc *sc)
{
 efx_nic_t *enp;
 struct sfxge_mcdi *mcdi;
 efx_mcdi_transport_t *emtp;
 efsys_mem_t *esmp;
 int max_msg_size;
 int rc;

 enp = sc->enp;
 mcdi = &sc->mcdi;
 emtp = &mcdi->transport;
 esmp = &mcdi->mem;
 max_msg_size = sizeof (uint32_t) + MCDI_CTL_SDU_LEN_MAX_V2;

 KASSERT(mcdi->state == SFXGE_MCDI_UNINITIALIZED,
     ("MCDI already initialized"));

 SFXGE_MCDI_LOCK_INIT(mcdi, device_get_nameunit(sc->dev));

 mcdi->state = SFXGE_MCDI_INITIALIZED;

 if ((rc = sfxge_dma_alloc(sc, max_msg_size, esmp)) != 0)
  goto fail;

 emtp->emt_context = sc;
 emtp->emt_dma_mem = esmp;
 emtp->emt_execute = sfxge_mcdi_execute;
 emtp->emt_ev_cpl = sfxge_mcdi_ev_cpl;
 emtp->emt_exception = sfxge_mcdi_exception;
 if ((rc = efx_mcdi_init(enp, emtp)) != 0)
  goto fail;

 return (0);

fail:
 SFXGE_MCDI_LOCK_DESTROY(mcdi);
 mcdi->state = SFXGE_MCDI_UNINITIALIZED;
 return (rc);
}
