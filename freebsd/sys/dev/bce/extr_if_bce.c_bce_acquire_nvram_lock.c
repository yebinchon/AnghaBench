
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bce_softc {int dummy; } ;


 int BCE_NVM_SW_ARB ;
 int BCE_NVM_SW_ARB_ARB_ARB2 ;
 int BCE_NVM_SW_ARB_ARB_REQ_SET2 ;
 int BCE_VERBOSE_NVRAM ;
 int BCE_WARN ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int DBPRINT (struct bce_softc*,int ,char*) ;
 int DELAY (int) ;
 int EBUSY ;
 int NVRAM_TIMEOUT_COUNT ;
 int REG_RD (struct bce_softc*,int ) ;
 int REG_WR (struct bce_softc*,int ,int ) ;

__attribute__((used)) static int
bce_acquire_nvram_lock(struct bce_softc *sc)
{
 u32 val;
 int j, rc = 0;

 DBENTER(BCE_VERBOSE_NVRAM);


 REG_WR(sc, BCE_NVM_SW_ARB, BCE_NVM_SW_ARB_ARB_REQ_SET2);
 for (j = 0; j < NVRAM_TIMEOUT_COUNT; j++) {
  val = REG_RD(sc, BCE_NVM_SW_ARB);
  if (val & BCE_NVM_SW_ARB_ARB_ARB2)
   break;

  DELAY(5);
 }

 if (j >= NVRAM_TIMEOUT_COUNT) {
  DBPRINT(sc, BCE_WARN, "Timeout acquiring NVRAM lock!\n");
  rc = EBUSY;
 }

 DBEXIT(BCE_VERBOSE_NVRAM);
 return (rc);
}
