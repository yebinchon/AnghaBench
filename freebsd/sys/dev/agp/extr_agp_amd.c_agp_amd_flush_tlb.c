
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_amd_softc {int dummy; } ;
typedef int device_t ;


 int AGP_AMD751_TLBCTRL ;
 int DELAY (int) ;
 scalar_t__ READ4 (int ) ;
 int WRITE4 (int ,int) ;
 struct agp_amd_softc* device_get_softc (int ) ;

__attribute__((used)) static void
agp_amd_flush_tlb(device_t dev)
{
 struct agp_amd_softc *sc = device_get_softc(dev);


 WRITE4(AGP_AMD751_TLBCTRL, 1);
 do {
  DELAY(1);
 } while (READ4(AGP_AMD751_TLBCTRL));
}
