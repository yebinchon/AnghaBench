
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef scalar_t__ u_int ;
struct sbni_softc {scalar_t__ wait_frameno; scalar_t__ inppos; int ifp; } ;


 scalar_t__ ETHER_MAX_LEN ;
 int IFCOUNTER_IERRORS ;
 int append_frame_to_pkt (struct sbni_softc*,scalar_t__,int ) ;
 int if_inc_counter (int ,int ,int) ;
 int skip_tail (struct sbni_softc*,scalar_t__,int ) ;

__attribute__((used)) static int
upload_data(struct sbni_softc *sc, u_int framelen, u_int frameno,
     u_int is_first, u_int32_t crc)
{
 int frame_ok;

 if (is_first) {
  sc->wait_frameno = frameno;
  sc->inppos = 0;
 }

 if (sc->wait_frameno == frameno) {

  if (sc->inppos + framelen <= ETHER_MAX_LEN) {
   frame_ok = append_frame_to_pkt(sc, framelen, crc);





  } else if ((frame_ok = skip_tail(sc, framelen, crc)) != 0) {
   sc->wait_frameno = 0;
   sc->inppos = 0;
   if_inc_counter(sc->ifp, IFCOUNTER_IERRORS, 1);

  }
 } else
  frame_ok = skip_tail(sc, framelen, crc);

 if (is_first && !frame_ok) {




  sc->wait_frameno = 0;
  if_inc_counter(sc->ifp, IFCOUNTER_IERRORS, 1);
 }

 return (frame_ok);
}
