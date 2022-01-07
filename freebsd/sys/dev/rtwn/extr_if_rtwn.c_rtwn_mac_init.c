
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtwn_softc {int mac_size; TYPE_1__* mac_prog; } ;
struct TYPE_2__ {int val; int reg; } ;


 int rtwn_write_1 (struct rtwn_softc*,int ,int ) ;

__attribute__((used)) static int
rtwn_mac_init(struct rtwn_softc *sc)
{
 int i, error;


 for (i = 0; i < sc->mac_size; i++) {
  error = rtwn_write_1(sc, sc->mac_prog[i].reg,
      sc->mac_prog[i].val);
  if (error != 0)
   return (error);
 }

 return (0);
}
