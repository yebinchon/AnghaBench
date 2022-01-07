
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_softc {int dummy; } ;


 int vtcon_ctrl_event_populate (struct vtcon_softc*) ;

__attribute__((used)) static int
vtcon_ctrl_init(struct vtcon_softc *sc)
{
 int error;

 error = vtcon_ctrl_event_populate(sc);

 return (error);
}
