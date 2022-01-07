
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* en85 ;
 int say (char*) ;
 int say1 (char*,unsigned int) ;

void encode_85(char *buf, const unsigned char *data, int bytes)
{
 say("encode 85");
 while (bytes) {
  unsigned acc = 0;
  int cnt;
  for (cnt = 24; cnt >= 0; cnt -= 8) {
   unsigned ch = *data++;
   acc |= ch << cnt;
   if (--bytes == 0)
    break;
  }
  say1(" %08x", acc);
  for (cnt = 4; cnt >= 0; cnt--) {
   int val = acc % 85;
   acc /= 85;
   buf[cnt] = en85[val];
  }
  buf += 5;
 }
 say("\n");

 *buf = 0;
}
