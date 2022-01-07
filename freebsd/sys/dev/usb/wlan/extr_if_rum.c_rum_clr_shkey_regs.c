
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rum_softc {int dummy; } ;


 int RT2573_SEC_CSR0 ;
 int RT2573_SEC_CSR1 ;
 int RT2573_SEC_CSR5 ;
 int rum_write (struct rum_softc*,int ,int ) ;

__attribute__((used)) static void
rum_clr_shkey_regs(struct rum_softc *sc)
{
 rum_write(sc, RT2573_SEC_CSR0, 0);
 rum_write(sc, RT2573_SEC_CSR1, 0);
 rum_write(sc, RT2573_SEC_CSR5, 0);
}
