
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct bfe_softc {int bfe_phyaddr; } ;


 int BFE_EMAC_INT_MII ;
 int BFE_EMAC_ISTAT ;
 int BFE_MDIO_DATA ;
 int BFE_MDIO_DATA_DATA ;
 int BFE_MDIO_OP_SHIFT ;
 int BFE_MDIO_OP_WRITE ;
 int BFE_MDIO_PMD_SHIFT ;
 int BFE_MDIO_RA_SHIFT ;
 int BFE_MDIO_SB_START ;
 int BFE_MDIO_TA_SHIFT ;
 int BFE_MDIO_TA_VALID ;
 int CSR_WRITE_4 (struct bfe_softc*,int ,int) ;
 int bfe_wait_bit (struct bfe_softc*,int ,int,int,int ) ;

__attribute__((used)) static int
bfe_writephy(struct bfe_softc *sc, u_int32_t reg, u_int32_t val)
{
 int status;

 CSR_WRITE_4(sc, BFE_EMAC_ISTAT, BFE_EMAC_INT_MII);
 CSR_WRITE_4(sc, BFE_MDIO_DATA, (BFE_MDIO_SB_START |
    (BFE_MDIO_OP_WRITE << BFE_MDIO_OP_SHIFT) |
    (sc->bfe_phyaddr << BFE_MDIO_PMD_SHIFT) |
    (reg << BFE_MDIO_RA_SHIFT) |
    (BFE_MDIO_TA_VALID << BFE_MDIO_TA_SHIFT) |
    (val & BFE_MDIO_DATA_DATA)));
 status = bfe_wait_bit(sc, BFE_EMAC_ISTAT, BFE_EMAC_INT_MII, 100, 0);

 return (status);
}
