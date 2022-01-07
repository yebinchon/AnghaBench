
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtwn_softc {int dummy; } ;


 scalar_t__ R92C_TSFTR (int) ;
 int rtwn_read_4 (struct rtwn_softc*,scalar_t__) ;

__attribute__((used)) static uint32_t
rtwn_get_tsf_high(struct rtwn_softc *sc, int id)
{
 return (rtwn_read_4(sc, R92C_TSFTR(id) + 4));
}
