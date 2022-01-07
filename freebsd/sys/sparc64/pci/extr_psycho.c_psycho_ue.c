
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_long ;
struct psycho_softc {int sc_dev; int sc_is; } ;


 int FILTER_HANDLED ;
 int PSR_UE_AFA ;
 int PSR_UE_AFS ;
 int PSYCHO_READ8 (struct psycho_softc*,int ) ;
 int UEAFSR_P_DTE ;
 int device_get_nameunit (int ) ;
 int iommu_decode_fault (int ,int) ;
 int panic (char*,int ,int ,int ) ;

__attribute__((used)) static int
psycho_ue(void *arg)
{
 struct psycho_softc *sc = arg;
 uint64_t afar, afsr;

 afar = PSYCHO_READ8(sc, PSR_UE_AFA);
 afsr = PSYCHO_READ8(sc, PSR_UE_AFS);






 if ((afsr & UEAFSR_P_DTE) != 0)
  iommu_decode_fault(sc->sc_is, afar);
 panic("%s: uncorrectable DMA error AFAR %#lx AFSR %#lx",
     device_get_nameunit(sc->sc_dev), (u_long)afar, (u_long)afsr);
 return (FILTER_HANDLED);
}
