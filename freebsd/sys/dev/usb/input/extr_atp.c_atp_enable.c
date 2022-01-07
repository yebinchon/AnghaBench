
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atp_softc {int sc_state; int sc_status; } ;


 int ATP_ENABLED ;
 int ATP_LLEVEL_INFO ;
 int DPRINTFN (int ,char*) ;
 int atp_init_stroke_pool (struct atp_softc*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int
atp_enable(struct atp_softc *sc)
{
 if (sc->sc_state & ATP_ENABLED)
  return (0);


 memset(&sc->sc_status, 0, sizeof(sc->sc_status));

 atp_init_stroke_pool(sc);

 sc->sc_state |= ATP_ENABLED;

 DPRINTFN(ATP_LLEVEL_INFO, "enabled atp\n");
 return (0);
}
