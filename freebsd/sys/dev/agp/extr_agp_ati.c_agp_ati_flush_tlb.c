
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_ati_softc {int dummy; } ;
typedef int device_t ;


 int ATI_GART_CACHE_CNTRL ;
 int READ4 (int ) ;
 int WRITE4 (int ,int) ;
 struct agp_ati_softc* device_get_softc (int ) ;

__attribute__((used)) static void
agp_ati_flush_tlb(device_t dev)
{
 struct agp_ati_softc *sc = device_get_softc(dev);


 WRITE4(ATI_GART_CACHE_CNTRL, 1);
 (void)READ4(ATI_GART_CACHE_CNTRL);
}
