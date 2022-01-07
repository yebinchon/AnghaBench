
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t uint16_t ;


 int ADD_BYTE (size_t const) ;
 int CHECK_LENGTH (int) ;

size_t
utf16_to_utf8(char *dst, size_t dst_len,
       const uint16_t *src, size_t src_len,
       int flags, int *errp)
{
    uint16_t spos, dpos;
    int error;




    error = 0;
    dpos = 0;
    for (spos=0; spos<src_len; spos++) {
 if (src[spos] < 0x80) {
     (dpos > dst_len-(1) ? dst=((void*)0) : ((void*)0));
     (dst ? dst[dpos] = (src[spos]) : 0, dpos++);
 }
 else if (src[spos] < 0x800) {
     (dpos > dst_len-(2) ? dst=((void*)0) : ((void*)0));
     (dst ? dst[dpos] = (0xc0 | (src[spos]>>6)) : 0, dpos++);
     (dst ? dst[dpos] = (0x80 | (src[spos] & 0x3f)) : 0, dpos++);
 }
 else if ((src[spos] & 0xdc00) == 0xd800) {
     uint32_t c;

     if (spos == src_len - 1 || (src[spos] & 0xdc00) != 0xdc00) {

  error++;
  continue;
     }
     spos++;
     (dpos > dst_len-(4) ? dst=((void*)0) : ((void*)0));
     c = (((src[spos]&0x3ff) << 10) | (src[spos+1]&0x3ff)) + 0x10000;
     (dst ? dst[dpos] = (0xf0 | (c>>18)) : 0, dpos++);
     (dst ? dst[dpos] = (0x80 | ((c>>12) & 0x3f)) : 0, dpos++);
     (dst ? dst[dpos] = (0x80 | ((c>>6) & 0x3f)) : 0, dpos++);
     (dst ? dst[dpos] = (0x80 | (c & 0x3f)) : 0, dpos++);
 }
 else if ((src[spos] & 0xdc00) == 0xdc00) {

     error++;
 }
 else {
     (dpos > dst_len-(3) ? dst=((void*)0) : ((void*)0));
     (dst ? dst[dpos] = (0xe0 | src[spos]>>12) : 0, dpos++);
     (dst ? dst[dpos] = (0x80 | ((src[spos]>>6) & 0x3f)) : 0, dpos++);
     (dst ? dst[dpos] = (0x80 | (src[spos] & 0x3f)) : 0, dpos++);
 }
    }

    if (errp)
 *errp = error;

    return dpos;



}
