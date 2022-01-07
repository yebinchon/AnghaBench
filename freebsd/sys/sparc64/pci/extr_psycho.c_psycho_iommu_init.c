
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct psycho_softc {int sc_dev; int sc_mem_res; struct iommu_state* sc_is; } ;
struct iommu_state {int is_dtcmp; int is_dva; int is_dqueue; int is_ddram; int is_dtag; int is_iommu; int is_bushandle; int is_bustag; } ;


 int PSR_IOMMU ;
 int PSR_IOMMU_QUEUE_DIAG ;
 int PSR_IOMMU_SVADIAG ;
 int PSR_IOMMU_TLB_CMP_DIAG ;
 int PSR_IOMMU_TLB_DATA_DIAG ;
 int PSR_IOMMU_TLB_TAG_DIAG ;
 int device_get_nameunit (int ) ;
 int iommu_init (int ,struct iommu_state*,int,int ,int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static void
psycho_iommu_init(struct psycho_softc *sc, int tsbsize, uint32_t dvmabase)
{
 struct iommu_state *is = sc->sc_is;


 is->is_bustag = rman_get_bustag(sc->sc_mem_res);
 is->is_bushandle = rman_get_bushandle(sc->sc_mem_res);
 is->is_iommu = PSR_IOMMU;
 is->is_dtag = PSR_IOMMU_TLB_TAG_DIAG;
 is->is_ddram = PSR_IOMMU_TLB_DATA_DIAG;
 is->is_dqueue = PSR_IOMMU_QUEUE_DIAG;
 is->is_dva = PSR_IOMMU_SVADIAG;
 is->is_dtcmp = PSR_IOMMU_TLB_CMP_DIAG;

 iommu_init(device_get_nameunit(sc->sc_dev), is, tsbsize, dvmabase, 0);
}
