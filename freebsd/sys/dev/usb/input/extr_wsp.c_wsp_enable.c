
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsp_softc {int sc_state; int sc_status; } ;


 int DPRINTFN (int ,char*) ;
 int WSP_ENABLED ;
 int WSP_LLEVEL_INFO ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int
wsp_enable(struct wsp_softc *sc)
{

 memset(&sc->sc_status, 0, sizeof(sc->sc_status));
 sc->sc_state |= WSP_ENABLED;

 DPRINTFN(WSP_LLEVEL_INFO, "enabled wsp\n");
 return (0);
}
