
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ffec_softc {int dummy; } ;


 int RX_DESC_COUNT ;

__attribute__((used)) static inline uint32_t
next_rxidx(struct ffec_softc *sc, uint32_t curidx)
{

 return ((curidx == RX_DESC_COUNT - 1) ? 0 : curidx + 1);
}
