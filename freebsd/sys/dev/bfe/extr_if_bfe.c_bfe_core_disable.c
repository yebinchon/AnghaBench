
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfe_softc {int dummy; } ;


 int BFE_BUSY ;
 int BFE_CLOCK ;
 int BFE_FGC ;
 int BFE_REJECT ;
 int BFE_RESET ;
 int BFE_SBTMSHIGH ;
 int BFE_SBTMSLOW ;
 int CSR_READ_4 (struct bfe_softc*,int ) ;
 int CSR_WRITE_4 (struct bfe_softc*,int ,int) ;
 int DELAY (int) ;
 int bfe_wait_bit (struct bfe_softc*,int ,int,int,int) ;

__attribute__((used)) static void
bfe_core_disable(struct bfe_softc *sc)
{
 if ((CSR_READ_4(sc, BFE_SBTMSLOW)) & BFE_RESET)
  return;





 CSR_WRITE_4(sc, BFE_SBTMSLOW, (BFE_REJECT | BFE_CLOCK));
 bfe_wait_bit(sc, BFE_SBTMSLOW, BFE_REJECT, 1000, 0);
 bfe_wait_bit(sc, BFE_SBTMSHIGH, BFE_BUSY, 1000, 1);
 CSR_WRITE_4(sc, BFE_SBTMSLOW, (BFE_FGC | BFE_CLOCK | BFE_REJECT |
    BFE_RESET));
 CSR_READ_4(sc, BFE_SBTMSLOW);
 DELAY(10);

 CSR_WRITE_4(sc, BFE_SBTMSLOW, (BFE_REJECT | BFE_RESET));
 DELAY(10);
}
