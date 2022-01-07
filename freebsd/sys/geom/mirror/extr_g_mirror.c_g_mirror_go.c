
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_mirror_softc {int sc_name; } ;


 int G_MIRROR_DEBUG (int ,char*,int ) ;
 int G_MIRROR_EVENT_DEVICE ;
 int G_MIRROR_EVENT_DONTWAIT ;
 int g_mirror_event_send (struct g_mirror_softc*,int ,int) ;

__attribute__((used)) static void
g_mirror_go(void *arg)
{
 struct g_mirror_softc *sc;

 sc = arg;
 G_MIRROR_DEBUG(0, "Force device %s start due to timeout.", sc->sc_name);
 g_mirror_event_send(sc, 0,
     G_MIRROR_EVENT_DONTWAIT | G_MIRROR_EVENT_DEVICE);
}
