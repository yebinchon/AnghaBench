
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int ;
typedef scalar_t__ u_char ;
struct sbni_softc {int framelen; int state; scalar_t__ outpos; scalar_t__ tx_frameno; } ;


 int CRC32 (scalar_t__,int ) ;
 int DAT ;
 int FL_NEED_RESEND ;
 int FL_PREV_OK ;
 int FRAME_FIRST ;
 int FRAME_RETRY ;
 int FRAME_SENT_BAD ;
 int FRAME_SENT_OK ;
 scalar_t__ SBNI_SIG ;
 int sbni_outb (struct sbni_softc*,int ,scalar_t__) ;

__attribute__((used)) static void
send_frame_header(struct sbni_softc *sc, u_int32_t *crc_p)
{
 u_int32_t crc;
 u_int len_field;
 u_char value;

 crc = *crc_p;
 len_field = sc->framelen + 6;

 if (sc->state & FL_NEED_RESEND)
  len_field |= FRAME_RETRY;

 if (sc->outpos == 0)
  len_field |= FRAME_FIRST;

 len_field |= (sc->state & FL_PREV_OK) ? FRAME_SENT_OK : FRAME_SENT_BAD;
 sbni_outb(sc, DAT, SBNI_SIG);

 value = (u_char)len_field;
 sbni_outb(sc, DAT, value);
 crc = CRC32(value, crc);
 value = (u_char)(len_field >> 8);
 sbni_outb(sc, DAT, value);
 crc = CRC32(value, crc);

 sbni_outb(sc, DAT, sc->tx_frameno);
 crc = CRC32(sc->tx_frameno, crc);
 sbni_outb(sc, DAT, 0);
 crc = CRC32(0, crc);
 *crc_p = crc;
}
