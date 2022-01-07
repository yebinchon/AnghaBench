
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfe_softc {int dummy; } ;


 int BFE_DMARX_CTRL ;
 int BFE_DMATX_CTRL ;
 int BFE_ENET_CTRL ;
 int BFE_ENET_DISABLE ;
 int BFE_IMASK ;
 int BFE_LOCK_ASSERT (struct bfe_softc*) ;
 int CSR_READ_4 (struct bfe_softc*,int ) ;
 int CSR_WRITE_4 (struct bfe_softc*,int ,int ) ;
 int DELAY (int) ;
 int bfe_wait_bit (struct bfe_softc*,int ,int ,int,int) ;

__attribute__((used)) static void
bfe_chip_halt(struct bfe_softc *sc)
{
 BFE_LOCK_ASSERT(sc);

 CSR_WRITE_4(sc, BFE_IMASK, 0);
 CSR_READ_4(sc, BFE_IMASK);

 CSR_WRITE_4(sc, BFE_ENET_CTRL, BFE_ENET_DISABLE);
 bfe_wait_bit(sc, BFE_ENET_CTRL, BFE_ENET_DISABLE, 200, 1);

 CSR_WRITE_4(sc, BFE_DMARX_CTRL, 0);
 CSR_WRITE_4(sc, BFE_DMATX_CTRL, 0);
 DELAY(10);
}
