
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct rtwn_softc {TYPE_1__** vaps; } ;
struct TYPE_2__ {int curr_mode; } ;


 int R92C_MSR ;
 int R92C_MSR_MASK ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int,int) ;

__attribute__((used)) static void
rtwn_set_mode(struct rtwn_softc *sc, uint8_t mode, int id)
{

 rtwn_setbits_1(sc, R92C_MSR, R92C_MSR_MASK << id * 2, mode << id * 2);
 if (sc->vaps[id] != ((void*)0))
  sc->vaps[id]->curr_mode = mode;
}
