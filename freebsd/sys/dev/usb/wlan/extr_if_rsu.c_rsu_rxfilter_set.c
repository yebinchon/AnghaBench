
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rsu_softc {int dummy; } ;


 int R92S_RCR ;
 int rsu_read_4 (struct rsu_softc*,int ) ;
 int rsu_write_4 (struct rsu_softc*,int ,int) ;

__attribute__((used)) static void
rsu_rxfilter_set(struct rsu_softc *sc, uint32_t clear, uint32_t set)
{

 rsu_write_4(sc, R92S_RCR,
    (rsu_read_4(sc, R92S_RCR) & ~clear) | set);
}
