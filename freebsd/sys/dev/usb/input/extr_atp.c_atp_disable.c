
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atp_softc {int sc_state; } ;


 int ATP_ENABLED ;
 int ATP_LLEVEL_INFO ;
 int ATP_VALID ;
 int DPRINTFN (int ,char*) ;

__attribute__((used)) static void
atp_disable(struct atp_softc *sc)
{
 sc->sc_state &= ~(ATP_ENABLED | ATP_VALID);
 DPRINTFN(ATP_LLEVEL_INFO, "disabled atp\n");
}
