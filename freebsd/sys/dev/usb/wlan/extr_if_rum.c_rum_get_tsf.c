
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct rum_softc {int dummy; } ;


 int RT2573_TXRX_CSR12 ;
 int rum_read_multi (struct rum_softc*,int ,int *,int) ;

__attribute__((used)) static void
rum_get_tsf(struct rum_softc *sc, uint64_t *buf)
{
 rum_read_multi(sc, RT2573_TXRX_CSR12, buf, sizeof (*buf));
}
