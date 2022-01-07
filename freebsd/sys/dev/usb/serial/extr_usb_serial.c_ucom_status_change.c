
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucom_softc {int sc_flag; TYPE_1__* sc_status_task; } ;
struct TYPE_2__ {int hdr; } ;


 int DPRINTF (char*) ;
 int MA_OWNED ;
 int UCOM_FLAG_CONSOLE ;
 int UCOM_FLAG_HL_READY ;
 int UCOM_MTX_ASSERT (struct ucom_softc*,int ) ;
 int ucom_cfg_status_change ;
 int ucom_queue_command (struct ucom_softc*,int ,int *,int *,int *) ;

void
ucom_status_change(struct ucom_softc *sc)
{
 UCOM_MTX_ASSERT(sc, MA_OWNED);

 if (sc->sc_flag & UCOM_FLAG_CONSOLE)
  return;

 if (!(sc->sc_flag & UCOM_FLAG_HL_READY)) {
  return;
 }
 DPRINTF("\n");

 ucom_queue_command(sc, ucom_cfg_status_change, ((void*)0),
     &sc->sc_status_task[0].hdr,
     &sc->sc_status_task[1].hdr);
}
