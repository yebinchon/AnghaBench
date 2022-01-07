
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ukbd_softc {int* sc_buffered_char; } ;


 int MOD_CONTROL_L ;
 int MOD_CONTROL_R ;
 int MOD_SHIFT_L ;
 int MOD_SHIFT_R ;
 int SCAN_PREFIX ;
 int SCAN_PREFIX_CTL ;
 int SCAN_PREFIX_E0 ;
 int SCAN_PREFIX_E1 ;
 int SCAN_PREFIX_SHIFT ;
 int SCAN_PRESS ;
 int SCAN_RELEASE ;
 scalar_t__ nitems (int const*) ;

__attribute__((used)) static int
ukbd_key2scan(struct ukbd_softc *sc, int code, int shift, int up)
{
 static const int scan[] = {

  0x11c,

  0x11d,
  0x135,
  0x137,
  0x138,
  0x147,
  0x148,
  0x149,
  0x14b,
  0x14d,
  0x14f,

  0x150,
  0x151,
  0x152,
  0x153,
  0x146,
  0x15b,
  0x15c,
  0x15d,


  0x168,
  0x15e,

  0x15f,
  0x160,
  0x161,
  0x162,
  0x163,
  0x164,
  0x165,
  0x166,
  0x167,
  0x125,

  0x11f,
  0x11e,
  0x120,


  0x73,
  0x70,
  0x7d,
  0x79,
  0x7b,
  0x5c,
  0x71,
  0x72,
 };

 if ((code >= 89) && (code < (int)(89 + nitems(scan)))) {
  code = scan[code - 89];
 }

 if (code == 0x137 && (!(shift & (MOD_CONTROL_L | MOD_CONTROL_R |
     MOD_SHIFT_L | MOD_SHIFT_R)))) {
  code |= SCAN_PREFIX_SHIFT;
 }

 if ((code == 0x146) && (!(shift & (MOD_CONTROL_L | MOD_CONTROL_R)))) {
  code = (0x45 | SCAN_PREFIX_E1 | SCAN_PREFIX_CTL);
 }
 code |= (up ? SCAN_RELEASE : SCAN_PRESS);

 if (code & SCAN_PREFIX) {
  if (code & SCAN_PREFIX_CTL) {

   sc->sc_buffered_char[0] = (0x1d | (code & SCAN_RELEASE));
   sc->sc_buffered_char[1] = (code & ~SCAN_PREFIX);
  } else if (code & SCAN_PREFIX_SHIFT) {

   sc->sc_buffered_char[0] = (0x2a | (code & SCAN_RELEASE));
   sc->sc_buffered_char[1] = (code & ~SCAN_PREFIX_SHIFT);
  } else {
   sc->sc_buffered_char[0] = (code & ~SCAN_PREFIX);
   sc->sc_buffered_char[1] = 0;
  }
  return ((code & SCAN_PREFIX_E0) ? 0xe0 : 0xe1);
 }
 return (code);

}
