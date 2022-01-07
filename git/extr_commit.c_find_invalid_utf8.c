
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int find_invalid_utf8(const char *buf, int len)
{
 int offset = 0;
 static const unsigned int max_codepoint[] = {
  0x7f, 0x7ff, 0xffff, 0x10ffff
 };

 while (len) {
  unsigned char c = *buf++;
  int bytes, bad_offset;
  unsigned int codepoint;
  unsigned int min_val, max_val;

  len--;
  offset++;


  if (c < 0x80)
   continue;

  bad_offset = offset-1;





  bytes = 0;
  while (c & 0x40) {
   c <<= 1;
   bytes++;
  }





  if (bytes < 1 || 3 < bytes)
   return bad_offset;


  if (len < bytes)
   return bad_offset;





  codepoint = (c & 0x7f) >> bytes;
  min_val = max_codepoint[bytes-1] + 1;
  max_val = max_codepoint[bytes];

  offset += bytes;
  len -= bytes;


  do {
   codepoint <<= 6;
   codepoint |= *buf & 0x3f;
   if ((*buf++ & 0xc0) != 0x80)
    return bad_offset;
  } while (--bytes);


  if (codepoint < min_val || codepoint > max_val)
   return bad_offset;

  if ((codepoint & 0x1ff800) == 0xd800)
   return bad_offset;

  if ((codepoint & 0xfffe) == 0xfffe)
   return bad_offset;

  if (codepoint >= 0xfdd0 && codepoint <= 0xfdef)
   return bad_offset;
 }
 return -1;
}
