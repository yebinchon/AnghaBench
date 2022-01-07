
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ n_alloc; } ;
struct sfxge_softc {int enp; TYPE_1__ intr; } ;
typedef int limits ;
struct TYPE_6__ {scalar_t__ edl_max_rxq_count; scalar_t__ edl_min_rxq_count; scalar_t__ edl_max_txq_count; scalar_t__ edl_min_txq_count; scalar_t__ edl_max_evq_count; scalar_t__ edl_min_evq_count; } ;
typedef TYPE_2__ efx_drv_limits_t ;


 scalar_t__ SFXGE_EVQ0_N_TXQ (struct sfxge_softc*) ;
 int efx_nic_set_drv_limits (int ,TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int
sfxge_set_drv_limits(struct sfxge_softc *sc)
{
 efx_drv_limits_t limits;

 memset(&limits, 0, sizeof(limits));


 limits.edl_min_evq_count = limits.edl_max_evq_count =
     sc->intr.n_alloc;
 limits.edl_min_txq_count = limits.edl_max_txq_count =
     sc->intr.n_alloc + SFXGE_EVQ0_N_TXQ(sc) - 1;
 limits.edl_min_rxq_count = limits.edl_max_rxq_count =
     sc->intr.n_alloc;

 return (efx_nic_set_drv_limits(sc->enp, &limits));
}
