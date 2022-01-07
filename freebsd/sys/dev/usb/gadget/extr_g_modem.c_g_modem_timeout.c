
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_modem_softc {int * sc_xfer; scalar_t__* sc_pattern; int sc_pattern_len; int sc_mode; } ;


 int DPRINTFN (int,char*,int ) ;
 size_t G_MODEM_BULK_RD ;
 size_t G_MODEM_BULK_WR ;
 size_t G_MODEM_INTR_DT ;
 int G_MODEM_MAX_STRLEN ;
 int g_modem_mode ;
 int g_modem_pattern_data ;
 int g_modem_timeout_reset (struct g_modem_softc*) ;
 int memcpy (scalar_t__*,int ,int) ;
 int strlen (scalar_t__*) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
g_modem_timeout(void *arg)
{
 struct g_modem_softc *sc = arg;

 sc->sc_mode = g_modem_mode;

 memcpy(sc->sc_pattern, g_modem_pattern_data, sizeof(sc->sc_pattern));

 sc->sc_pattern[G_MODEM_MAX_STRLEN - 1] = 0;

 sc->sc_pattern_len = strlen(sc->sc_pattern);

 DPRINTFN(11, "Timeout %p\n", sc->sc_xfer[G_MODEM_INTR_DT]);

 usbd_transfer_start(sc->sc_xfer[G_MODEM_BULK_WR]);
 usbd_transfer_start(sc->sc_xfer[G_MODEM_BULK_RD]);

 g_modem_timeout_reset(sc);
}
