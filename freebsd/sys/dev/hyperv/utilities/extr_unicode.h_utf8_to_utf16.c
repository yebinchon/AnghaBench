
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int IS_CONT (unsigned char const) ;
 int UNICODE_UTF8_LATIN1_FALLBACK ;

size_t
utf8_to_utf16(uint16_t *dst, size_t dst_len,
       const char *src, size_t src_len,
       int flags, int *errp)
{
    const unsigned char *s;
    size_t spos, dpos;
    int error;
    uint16_t c;



    error = 0;
    s = (const unsigned char *)src;
    spos = dpos = 0;
    while (spos<src_len) {
 if (s[spos] < 0x80)
     c = s[spos++];
 else if ((flags & UNICODE_UTF8_LATIN1_FALLBACK)
   && (spos >= src_len || !(((s[spos+1])&0xc0) == 0x80))
   && s[spos]>=0xa0) {

     c = s[spos++];
 }
 else if (s[spos] < 0xc0 || s[spos] >= 0xf5) {


     error++;
     spos++;
     continue;
 }
 else if (s[spos] < 0xe0) {
     if (spos >= src_len || !(((s[spos+1])&0xc0) == 0x80)) {
  spos++;
  error++;
  continue;
     }
     c = ((s[spos] & 0x3f) << 6) | (s[spos+1] & 0x3f);
     spos += 2;
     if (c < 0x80) {

  error++;
  continue;
     }
 }
 else if (s[spos] < 0xf0) {
     if (spos >= src_len-2
  || !(((s[spos+1])&0xc0) == 0x80) || !(((s[spos+2])&0xc0) == 0x80)) {
  spos++;
  error++;
  continue;
     }
     c = ((s[spos] & 0x0f) << 12) | ((s[spos+1] & 0x3f) << 6)
  | (s[spos+2] & 0x3f);
     spos += 3;
     if (c < 0x800 || (c & 0xdf00) == 0xd800 ) {

  error++;
  continue;
     }
 }
 else {
     uint32_t cc;


     if (spos >= src_len-3 || !(((s[spos+1])&0xc0) == 0x80)
  || !(((s[spos+2])&0xc0) == 0x80) || !(((s[spos+3])&0xc0) == 0x80)) {
  spos++;
  error++;

  continue;
     }
     cc = ((s[spos] & 0x03) << 18) | ((s[spos+1] & 0x3f) << 12)
   | ((s[spos+2] & 0x3f) << 6) | (s[spos+3] & 0x3f);
     spos += 4;
     if (cc < 0x10000) {

  error++;
  continue;
     }
     if (dst && dpos < dst_len)
  dst[dpos] = (0xd800 | ((cc-0x10000)>>10));
     dpos++;
     c = 0xdc00 | ((cc-0x10000) & 0x3ffff);
 }

 if (dst && dpos < dst_len)
     dst[dpos] = c;
 dpos++;
    }

    if (errp)
 *errp = error;

    return dpos;


}
