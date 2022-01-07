
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cesa_tdma_desc {int dummy; } ;
struct cesa_softc {int sc_sram_base_pa; } ;
struct cesa_sa_hdesc {int dummy; } ;
struct cesa_sa_desc {int csd_cshd_paddr; } ;


 struct cesa_tdma_desc* cesa_tdma_copy (struct cesa_softc*,int ,int ,int) ;

__attribute__((used)) static struct cesa_tdma_desc *
cesa_tdma_copy_sdesc(struct cesa_softc *sc, struct cesa_sa_desc *csd)
{

 return (cesa_tdma_copy(sc, sc->sc_sram_base_pa, csd->csd_cshd_paddr,
     sizeof(struct cesa_sa_hdesc)));
}
