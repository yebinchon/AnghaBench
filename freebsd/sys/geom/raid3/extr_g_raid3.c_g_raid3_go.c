
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid3_softc {int sc_name; } ;


 int G_RAID3_DEBUG (int ,char*,int ) ;
 int G_RAID3_EVENT_DEVICE ;
 int G_RAID3_EVENT_DONTWAIT ;
 int g_raid3_event_send (struct g_raid3_softc*,int ,int) ;

__attribute__((used)) static void
g_raid3_go(void *arg)
{
 struct g_raid3_softc *sc;

 sc = arg;
 G_RAID3_DEBUG(0, "Force device %s start due to timeout.", sc->sc_name);
 g_raid3_event_send(sc, 0,
     G_RAID3_EVENT_DONTWAIT | G_RAID3_EVENT_DEVICE);
}
