
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct rtwn_softc {int dummy; } ;


 int rtwn_get_tsf_high (struct rtwn_softc*,int) ;
 scalar_t__ rtwn_get_tsf_low (struct rtwn_softc*,int) ;

__attribute__((used)) static void
rtwn_get_tsf(struct rtwn_softc *sc, uint64_t *buf, int id)
{

 *buf = rtwn_get_tsf_high(sc, id);
 *buf <<= 32;
 *buf += rtwn_get_tsf_low(sc, id);
}
