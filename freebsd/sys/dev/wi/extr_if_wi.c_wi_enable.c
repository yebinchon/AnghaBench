
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wi_softc {int sc_portnum; int sc_enabled; } ;


 int CSR_WRITE_2 (struct wi_softc*,int ,int ) ;
 int WI_CMD_ENABLE ;
 int WI_INTRS ;
 int WI_INT_EN ;
 int wi_cmd (struct wi_softc*,int,int ,int ,int ) ;

__attribute__((used)) static void
wi_enable(struct wi_softc *sc)
{

 CSR_WRITE_2(sc, WI_INT_EN, WI_INTRS);


 wi_cmd(sc, WI_CMD_ENABLE | sc->sc_portnum, 0, 0, 0);
 sc->sc_enabled = 1;
}
