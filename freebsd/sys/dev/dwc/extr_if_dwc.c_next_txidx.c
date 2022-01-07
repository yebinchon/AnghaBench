
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dwc_softc {int dummy; } ;


 int TX_DESC_COUNT ;

__attribute__((used)) static inline uint32_t
next_txidx(struct dwc_softc *sc, uint32_t curidx)
{

 return ((curidx + 1) % TX_DESC_COUNT);
}
