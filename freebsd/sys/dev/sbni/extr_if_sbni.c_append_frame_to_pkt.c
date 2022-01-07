
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
typedef scalar_t__ u_int ;
struct sbni_softc {scalar_t__ inppos; scalar_t__ wait_frameno; int ifp; TYPE_1__* rx_buf_p; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {scalar_t__ m_data; } ;


 scalar_t__ CRC32_REMAINDER ;
 scalar_t__ ETHER_MAX_LEN ;
 int IFCOUNTER_IPACKETS ;
 scalar_t__ calc_crc32 (int ,scalar_t__,scalar_t__) ;
 int get_rx_buf (struct sbni_softc*) ;
 int if_inc_counter (int ,int ,int) ;
 int indicate_pkt (struct sbni_softc*) ;
 int sbni_insb (struct sbni_softc*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
append_frame_to_pkt(struct sbni_softc *sc, u_int framelen, u_int32_t crc)
{
 caddr_t p;

 if (sc->inppos + framelen > ETHER_MAX_LEN)
  return (0);

 if (!sc->rx_buf_p && !get_rx_buf(sc))
  return (0);

 p = sc->rx_buf_p->m_data + sc->inppos;
 sbni_insb(sc, p, framelen);
 if (calc_crc32(crc, p, framelen) != CRC32_REMAINDER)
  return (0);

 sc->inppos += framelen - 4;
 if (--sc->wait_frameno == 0) {
  indicate_pkt(sc);
  if_inc_counter(sc->ifp, IFCOUNTER_IPACKETS, 1);
 }

 return (1);
}
