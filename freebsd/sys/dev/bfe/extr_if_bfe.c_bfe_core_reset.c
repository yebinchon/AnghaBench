
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct bfe_softc {int dummy; } ;


 int BFE_CLOCK ;
 int BFE_FGC ;
 int BFE_IBE ;
 int BFE_RESET ;
 int BFE_SBIMSTATE ;
 int BFE_SBTMSHIGH ;
 int BFE_SBTMSLOW ;
 int BFE_SERR ;
 int BFE_TO ;
 int CSR_READ_4 (struct bfe_softc*,int ) ;
 int CSR_WRITE_4 (struct bfe_softc*,int ,int) ;
 int DELAY (int) ;
 int bfe_core_disable (struct bfe_softc*) ;

__attribute__((used)) static void
bfe_core_reset(struct bfe_softc *sc)
{
 u_int32_t val;


 bfe_core_disable(sc);


 CSR_WRITE_4(sc, BFE_SBTMSLOW, (BFE_RESET | BFE_CLOCK | BFE_FGC));
 CSR_READ_4(sc, BFE_SBTMSLOW);
 DELAY(10);


 if (CSR_READ_4(sc, BFE_SBTMSHIGH) & BFE_SERR)
  CSR_WRITE_4(sc, BFE_SBTMSHIGH, 0);
 val = CSR_READ_4(sc, BFE_SBIMSTATE);
 if (val & (BFE_IBE | BFE_TO))
  CSR_WRITE_4(sc, BFE_SBIMSTATE, val & ~(BFE_IBE | BFE_TO));


 CSR_WRITE_4(sc, BFE_SBTMSLOW, (BFE_CLOCK | BFE_FGC));
 CSR_READ_4(sc, BFE_SBTMSLOW);
 DELAY(10);


 CSR_WRITE_4(sc, BFE_SBTMSLOW, BFE_CLOCK);
 CSR_READ_4(sc, BFE_SBTMSLOW);
 DELAY(10);
}
