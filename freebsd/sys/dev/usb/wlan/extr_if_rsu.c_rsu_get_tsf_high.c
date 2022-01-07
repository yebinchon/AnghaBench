
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rsu_softc {int dummy; } ;


 scalar_t__ R92S_TSFTR ;
 int rsu_read_4 (struct rsu_softc*,scalar_t__) ;

__attribute__((used)) static uint32_t
rsu_get_tsf_high(struct rsu_softc *sc)
{
 return (rsu_read_4(sc, R92S_TSFTR + 4));
}
