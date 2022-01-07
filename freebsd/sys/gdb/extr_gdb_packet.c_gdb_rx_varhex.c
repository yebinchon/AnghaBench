
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 scalar_t__ C2N (int) ;
 int EOF ;
 int gdb_rx_char () ;
 scalar_t__ gdb_rxp ;
 scalar_t__ gdb_rxsz ;
 scalar_t__ isxdigit (int) ;

int
gdb_rx_varhex(uintmax_t *vp)
{
 uintmax_t v;
 int c, neg;

 c = gdb_rx_char();
 neg = (c == '-') ? 1 : 0;
 if (neg == 1)
  c = gdb_rx_char();
 if (!isxdigit(c)) {
  gdb_rxp -= ((c == -1) ? 0 : 1) + neg;
  gdb_rxsz += ((c == -1) ? 0 : 1) + neg;
  return (-1);
 }
 v = 0;
 do {
  v <<= 4;
  v += C2N(c);
  c = gdb_rx_char();
 } while (isxdigit(c));
 if (c != EOF) {
  gdb_rxp--;
  gdb_rxsz++;
 }
 *vp = (neg) ? -v : v;
 return (0);
}
