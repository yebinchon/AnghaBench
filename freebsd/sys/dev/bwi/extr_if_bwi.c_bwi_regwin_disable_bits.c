
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bwi_softc {int dummy; } ;


 scalar_t__ BWI_BUSREV_0 ;
 scalar_t__ BWI_BUSREV_1 ;
 int BWI_DBG_ATTACH ;
 int BWI_DBG_INIT ;
 int BWI_DBG_MISC ;
 int BWI_ID_LO ;
 int BWI_ID_LO_BUSREV_MASK ;
 scalar_t__ BWI_STATE_LO_DISABLE1 ;
 scalar_t__ BWI_STATE_LO_DISABLE2 ;
 int CSR_READ_4 (struct bwi_softc*,int ) ;
 int DPRINTF (struct bwi_softc*,int,char*,scalar_t__) ;
 scalar_t__ __SHIFTOUT (int ,int ) ;

__attribute__((used)) static uint32_t
bwi_regwin_disable_bits(struct bwi_softc *sc)
{
 uint32_t busrev;


 busrev = __SHIFTOUT(CSR_READ_4(sc, BWI_ID_LO), BWI_ID_LO_BUSREV_MASK);
 DPRINTF(sc, BWI_DBG_ATTACH | BWI_DBG_INIT | BWI_DBG_MISC,
  "bus rev %u\n", busrev);

 if (busrev == BWI_BUSREV_0)
  return BWI_STATE_LO_DISABLE1;
 else if (busrev == BWI_BUSREV_1)
  return BWI_STATE_LO_DISABLE2;
 else
  return (BWI_STATE_LO_DISABLE1 | BWI_STATE_LO_DISABLE2);
}
