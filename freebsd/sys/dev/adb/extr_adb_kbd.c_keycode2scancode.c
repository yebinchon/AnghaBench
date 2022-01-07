
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTLS ;
 int SCAN_PREFIX_CTL ;
 int const SCAN_PREFIX_E0 ;
 int SCAN_PREFIX_E1 ;

 int SCAN_PRESS ;
 int SCAN_RELEASE ;
 int SHIFTS ;
 int nitems (int const*) ;

__attribute__((used)) static int
keycode2scancode(int keycode, int shift, int up)
{
 static const int scan[] = {

  0x1c , 0x1d , 0x35 ,

  0x37 | 128,

  0x38, 0x47, 0x48, 0x49, 0x4b, 0x4d, 0x4f,

  0x50, 0x51, 0x52, 0x53,

  0x46,




  0x5b, 0x5c, 0x5d,


  0x68, 0x5e, 0x5f, 0x60, 0x61, 0x62, 0x63,

  0x64, 0x65, 0x66, 0x67, 0x25, 0x1f, 0x1e,

  0x20
 };
 int scancode;

 scancode = keycode;
 if ((keycode >= 89) && (keycode < 89 + nitems(scan)))
 scancode = scan[keycode - 89] | SCAN_PREFIX_E0;

 if ((keycode == 104) && !(shift & CTLS))
  scancode = 0x45 | SCAN_PREFIX_E1 | SCAN_PREFIX_CTL;
 if (shift & SHIFTS)
  scancode &= ~128;
 return (scancode | (up ? SCAN_RELEASE : SCAN_PRESS));
}
