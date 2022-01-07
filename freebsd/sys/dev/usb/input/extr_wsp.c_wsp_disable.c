
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsp_softc {int sc_state; } ;


 int DPRINTFN (int ,char*) ;
 int WSP_ENABLED ;
 int WSP_LLEVEL_INFO ;

__attribute__((used)) static void
wsp_disable(struct wsp_softc *sc)
{
 sc->sc_state &= ~WSP_ENABLED;
 DPRINTFN(WSP_LLEVEL_INFO, "disabled wsp\n");
}
