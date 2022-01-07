
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rum_softc {int dummy; } ;


 int RT2573_TXRX_CSR9 ;
 int rum_clrbits (struct rum_softc*,int ,int) ;

__attribute__((used)) static void
rum_abort_tsf_sync(struct rum_softc *sc)
{
 rum_clrbits(sc, RT2573_TXRX_CSR9, 0x00ffffff);
}
