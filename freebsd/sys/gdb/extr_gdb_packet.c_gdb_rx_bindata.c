
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int gdb_rx_char () ;

int
gdb_rx_bindata(unsigned char *data, size_t datalen, size_t *amt)
{
 int c;

 *amt = 0;

 while (*amt < datalen) {
  c = gdb_rx_char();
  if (c == EOF)
   break;

  if (c == '}') {

   if ((c = gdb_rx_char()) == EOF)
    return (1);
   c ^= 0x20;
  }
  *(data++) = c & 0xff;
  (*amt)++;
 }

 return (0);
}
