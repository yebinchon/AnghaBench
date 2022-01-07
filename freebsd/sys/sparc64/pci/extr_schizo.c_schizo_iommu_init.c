
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int is_dtcmp; int is_dva; int is_dqueue; int is_ddram; int is_dtag; int is_iommu; int is_bushandle; int is_bustag; } ;
struct TYPE_4__ {TYPE_1__ sis_is; } ;
struct schizo_softc {TYPE_2__ sc_is; int sc_dev; int * sc_mem_res; } ;
struct iommu_state {int dummy; } ;


 size_t STX_PCI ;
 int STX_PCI_IOMMU ;
 int STX_PCI_IOMMU_QUEUE_DIAG ;
 int STX_PCI_IOMMU_SVADIAG ;
 int STX_PCI_IOMMU_TLB_CMP_DIAG ;
 int STX_PCI_IOMMU_TLB_DATA_DIAG ;
 int STX_PCI_IOMMU_TLB_TAG_DIAG ;
 int device_get_nameunit (int ) ;
 int iommu_init (int ,struct iommu_state*,int,int ,int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static void
schizo_iommu_init(struct schizo_softc *sc, int tsbsize, uint32_t dvmabase)
{


 sc->sc_is.sis_is.is_bustag = rman_get_bustag(sc->sc_mem_res[STX_PCI]);
 sc->sc_is.sis_is.is_bushandle =
     rman_get_bushandle(sc->sc_mem_res[STX_PCI]);
 sc->sc_is.sis_is.is_iommu = STX_PCI_IOMMU;
 sc->sc_is.sis_is.is_dtag = STX_PCI_IOMMU_TLB_TAG_DIAG;
 sc->sc_is.sis_is.is_ddram = STX_PCI_IOMMU_TLB_DATA_DIAG;
 sc->sc_is.sis_is.is_dqueue = STX_PCI_IOMMU_QUEUE_DIAG;
 sc->sc_is.sis_is.is_dva = STX_PCI_IOMMU_SVADIAG;
 sc->sc_is.sis_is.is_dtcmp = STX_PCI_IOMMU_TLB_CMP_DIAG;

 iommu_init(device_get_nameunit(sc->sc_dev),
     (struct iommu_state *)&sc->sc_is, tsbsize, dvmabase, 0);
}
