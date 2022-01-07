
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cesa_tdma_desc {int dummy; } ;
struct cesa_softc {scalar_t__ sc_sram_base_pa; } ;
struct cesa_sa_hdesc {int dummy; } ;
struct cesa_sa_data {int dummy; } ;
struct cesa_request {int cr_csd_paddr; } ;


 struct cesa_tdma_desc* cesa_tdma_copy (struct cesa_softc*,scalar_t__,int ,int) ;

__attribute__((used)) static struct cesa_tdma_desc *
cesa_tdma_copyin_sa_data(struct cesa_softc *sc, struct cesa_request *cr)
{

 return (cesa_tdma_copy(sc, sc->sc_sram_base_pa +
     sizeof(struct cesa_sa_hdesc), cr->cr_csd_paddr,
     sizeof(struct cesa_sa_data)));
}
