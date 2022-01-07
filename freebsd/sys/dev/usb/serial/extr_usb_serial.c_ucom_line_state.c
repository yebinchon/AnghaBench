
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ucom_softc {int sc_flag; TYPE_1__* sc_line_state_task; int sc_pls_clr; int sc_pls_set; int sc_pls_curr; } ;
struct TYPE_2__ {int hdr; } ;


 int DPRINTF (char*,int ,int ) ;
 int MA_OWNED ;
 int UCOM_FLAG_HL_READY ;
 int UCOM_MTX_ASSERT (struct ucom_softc*,int ) ;
 int ucom_cfg_line_state ;
 int ucom_queue_command (struct ucom_softc*,int ,int *,int *,int *) ;

__attribute__((used)) static void
ucom_line_state(struct ucom_softc *sc,
    uint8_t set_bits, uint8_t clear_bits)
{
 UCOM_MTX_ASSERT(sc, MA_OWNED);

 if (!(sc->sc_flag & UCOM_FLAG_HL_READY)) {
  return;
 }

 DPRINTF("on=0x%02x, off=0x%02x\n", set_bits, clear_bits);


 sc->sc_pls_curr |= set_bits;
 sc->sc_pls_curr &= ~clear_bits;
 sc->sc_pls_set |= set_bits;
 sc->sc_pls_clr |= clear_bits;


 ucom_queue_command(sc, ucom_cfg_line_state, ((void*)0),
     &sc->sc_line_state_task[0].hdr,
     &sc->sc_line_state_task[1].hdr);
}
