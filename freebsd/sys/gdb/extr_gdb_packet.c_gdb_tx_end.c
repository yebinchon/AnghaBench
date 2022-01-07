
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* gdb_putc ) (char) ;int * gdb_sendpacket; } ;


 char N2C (unsigned char) ;
 int gdb_ackmode ;
 TYPE_1__* gdb_cur ;
 unsigned char gdb_getc () ;
 int gdb_tx_sendpacket () ;
 char* gdb_txbuf ;
 char const* gdb_txp ;
 int stub1 (char) ;
 int stub10 (int) ;
 int stub11 (char) ;
 int stub12 (char) ;
 int stub13 (char) ;
 int stub2 (unsigned char) ;
 int stub3 (char) ;
 int stub4 (int) ;
 int stub5 (unsigned char) ;
 int stub6 (unsigned char) ;
 int stub7 (unsigned char) ;
 int stub8 (unsigned char) ;
 int stub9 (char) ;

int
gdb_tx_end(void)
{
 const char *p;
 int runlen;
 unsigned char c, cksum;

 do {
  if (gdb_cur->gdb_sendpacket != ((void*)0)) {
   gdb_tx_sendpacket();
   goto getack;
  }

  gdb_cur->gdb_putc('$');

  cksum = 0;
  p = gdb_txbuf;
  while (p < gdb_txp) {

   c = *p++;
   gdb_cur->gdb_putc(c);
   cksum += c;
   runlen = 0;

   while (p < gdb_txp && *p == c) {
    runlen++;
    p++;
   }

   while (runlen >= 97) {
    gdb_cur->gdb_putc('*');
    cksum += '*';
    gdb_cur->gdb_putc(97+29);
    cksum += 97+29;
    runlen -= 97;
    if (runlen > 0) {
     gdb_cur->gdb_putc(c);
     cksum += c;
     runlen--;
    }
   }
   if (runlen == 1) {
    gdb_cur->gdb_putc(c);
    cksum += c;
    runlen--;
   }
   if (runlen == 0)
    continue;

   if (runlen == 7) {
    gdb_cur->gdb_putc(c);
    cksum += c;
    runlen--;
   }
   if (runlen == 6 || runlen == 14 || runlen == 16) {
    gdb_cur->gdb_putc(c);
    cksum += c;
    runlen--;
   }
   gdb_cur->gdb_putc('*');
   cksum += '*';
   gdb_cur->gdb_putc(runlen+29);
   cksum += runlen+29;
  }

  gdb_cur->gdb_putc('#');
  c = cksum >> 4;
  gdb_cur->gdb_putc(N2C(c));
  c = cksum & 0x0f;
  gdb_cur->gdb_putc(N2C(c));

getack:





  if (!gdb_ackmode)
   break;

  c = gdb_getc();
 } while (c != '+');

 return (0);
}
