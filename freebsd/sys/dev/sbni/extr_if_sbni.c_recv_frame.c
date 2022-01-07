
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int ;
struct TYPE_2__ {int bad_rx_number; int all_rx_number; } ;
struct sbni_softc {TYPE_1__ in_stats; int state; } ;


 int CRC32_INITIAL ;
 int CSR0 ;
 int CT_ZER ;
 int FL_PREV_OK ;
 int change_level (struct sbni_softc*) ;
 scalar_t__ check_fhdr (struct sbni_softc*,int*,int*,int*,int*,int *) ;
 int interpret_ack (struct sbni_softc*,int) ;
 int sbni_inb (struct sbni_softc*,int ) ;
 int sbni_outb (struct sbni_softc*,int ,int) ;
 int skip_tail (struct sbni_softc*,int,int ) ;
 int upload_data (struct sbni_softc*,int,int,int,int ) ;

__attribute__((used)) static int
recv_frame(struct sbni_softc *sc)
{
 u_int32_t crc;
 u_int framelen, frameno, ack;
 u_int is_first, frame_ok;

 crc = CRC32_INITIAL;
 if (check_fhdr(sc, &framelen, &frameno, &ack, &is_first, &crc)) {
  frame_ok = framelen > 4 ?
      upload_data(sc, framelen, frameno, is_first, crc) :
      skip_tail(sc, framelen, crc);
  if (frame_ok)
   interpret_ack(sc, ack);
 } else {
  framelen = 0;
  frame_ok = 0;
 }

 sbni_outb(sc, CSR0, sbni_inb(sc, CSR0) ^ CT_ZER);
 if (frame_ok) {
  sc->state |= FL_PREV_OK;
  if (framelen > 4)
   sc->in_stats.all_rx_number++;
 } else {
  sc->state &= ~FL_PREV_OK;
  change_level(sc);
  sc->in_stats.all_rx_number++;
  sc->in_stats.bad_rx_number++;
 }

 return (!frame_ok || framelen > 4);
}
