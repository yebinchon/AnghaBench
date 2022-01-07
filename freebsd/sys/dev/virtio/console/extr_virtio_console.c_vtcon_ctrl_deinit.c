
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_softc {int dummy; } ;


 int vtcon_ctrl_event_drain (struct vtcon_softc*) ;

__attribute__((used)) static void
vtcon_ctrl_deinit(struct vtcon_softc *sc)
{

 vtcon_ctrl_event_drain(sc);
}
