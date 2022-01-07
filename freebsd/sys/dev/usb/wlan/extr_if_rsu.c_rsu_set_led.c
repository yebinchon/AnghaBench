
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsu_softc {int dummy; } ;


 int R92S_LEDCFG ;
 int rsu_read_1 (struct rsu_softc*,int ) ;
 int rsu_write_1 (struct rsu_softc*,int ,int) ;

__attribute__((used)) static void
rsu_set_led(struct rsu_softc *sc, int on)
{
 rsu_write_1(sc, R92S_LEDCFG,
     (rsu_read_1(sc, R92S_LEDCFG) & 0xf0) | (!on << 3));
}
