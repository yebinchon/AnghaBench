
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct bxe_softc {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ BXE_PREV_UNDI_BD (int ) ;
 int BXE_PREV_UNDI_PROD (scalar_t__,scalar_t__) ;
 int BXE_PREV_UNDI_PROD_ADDR (scalar_t__) ;
 scalar_t__ BXE_PREV_UNDI_RCQ (int ) ;
 int DBG_LOAD ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static void
bxe_prev_unload_undi_inc(struct bxe_softc *sc,
                         uint8_t port,
                         uint8_t inc)
{
    uint16_t rcq, bd;
    uint32_t tmp_reg = REG_RD(sc, BXE_PREV_UNDI_PROD_ADDR(port));

    rcq = BXE_PREV_UNDI_RCQ(tmp_reg) + inc;
    bd = BXE_PREV_UNDI_BD(tmp_reg) + inc;

    tmp_reg = BXE_PREV_UNDI_PROD(rcq, bd);
    REG_WR(sc, BXE_PREV_UNDI_PROD_ADDR(port), tmp_reg);

    BLOGD(sc, DBG_LOAD,
          "UNDI producer [%d] rings bd -> 0x%04x, rcq -> 0x%04x\n",
          port, bd, rcq);
}
