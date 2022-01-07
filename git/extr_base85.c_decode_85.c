
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* de85 ;
 int error (char*,...) ;
 int prep_base85 () ;
 int say (char*) ;
 int say1 (char*,unsigned int) ;
 int say2 (char*,int,char const*) ;

int decode_85(char *dst, const char *buffer, int len)
{
 prep_base85();

 say2("decode 85 <%.*s>", len / 4 * 5, buffer);
 while (len) {
  unsigned acc = 0;
  int de, cnt = 4;
  unsigned char ch;
  do {
   ch = *buffer++;
   de = de85[ch];
   if (--de < 0)
    return error("invalid base85 alphabet %c", ch);
   acc = acc * 85 + de;
  } while (--cnt);
  ch = *buffer++;
  de = de85[ch];
  if (--de < 0)
   return error("invalid base85 alphabet %c", ch);

  if (0xffffffff / 85 < acc ||
      0xffffffff - de < (acc *= 85))
   return error("invalid base85 sequence %.5s", buffer-5);
  acc += de;
  say1(" %08x", acc);

  cnt = (len < 4) ? len : 4;
  len -= cnt;
  do {
   acc = (acc << 8) | (acc >> 24);
   *dst++ = acc;
  } while (--cnt);
 }
 say("\n");

 return 0;
}
