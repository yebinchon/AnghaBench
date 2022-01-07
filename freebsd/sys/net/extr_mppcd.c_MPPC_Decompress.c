
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_long ;
typedef int u_char ;
struct MPPC_decomp_state {int* hist; int histptr; } ;


 int MPPC_DEST_EXHAUSTED ;
 int MPPC_OK ;
 int MPPC_RESTART_HISTORY ;
 int MPPE_HIST_LEN ;
 int getbits (int*,int,int*,int*) ;
 int getbyte (int*,int,int) ;
 int lamecopy (int*,int*,int) ;
 int memcpy (int*,int*,int) ;

int MPPC_Decompress(u_char **src, u_char **dst, u_long *srcCnt, u_long *dstCnt, char *history, int flags)
{
    struct MPPC_decomp_state *state = (struct MPPC_decomp_state*)history;
    uint32_t olen, off, len, bits, val, sig, i, l;
    uint8_t *hist, *s;
    u_char *isrc = *src;
    int rtn = MPPC_OK;

    if ((flags & MPPC_RESTART_HISTORY) != 0) {
 memcpy(state->hist, state->hist + MPPE_HIST_LEN, MPPE_HIST_LEN);
 state->histptr = MPPE_HIST_LEN;
    }

    hist = state->hist + state->histptr;
    olen = len = i = 0;
    l = 8;
    bits = *srcCnt * 8;
    while (bits >= 8) {
 val = getbyte(isrc, i++, l);
 if (val < 0x80) {
     if (state->histptr < 2*MPPE_HIST_LEN) {

  (state->hist)[(state->histptr)++] = (uint8_t) val;
     } else {

  rtn &= ~MPPC_OK;
  return rtn;
     }
     olen++;
     bits -= 8;
     continue;
 }

 sig = val & 0xc0;
 if (sig == 0x80) {
     if (state->histptr < 2*MPPE_HIST_LEN) {

  (state->hist)[(state->histptr)++] =
      (uint8_t) (0x80|((val&0x3f)<<1)|getbits(isrc, 1 , &i ,&l));
     } else {

  rtn &= ~MPPC_OK;
  return (rtn);
     }
     olen++;
     bits -= 9;
     continue;
 }



 sig = val & 0xf0;
 if (sig == 0xf0) {
     off = (((val&0x0f)<<2)|getbits(isrc, 2 , &i ,&l));
     bits -= 10;
 } else {
     if (sig == 0xe0) {
  off = ((((val&0x0f)<<4)|getbits(isrc, 4 , &i ,&l))+64);
  bits -= 12;
     } else {
  if ((sig&0xe0) == 0xc0) {
      off = ((((val&0x1f)<<8)|getbyte(isrc, i++, l))+320);
      bits -= 16;
      if (off > MPPE_HIST_LEN - 1) {
   rtn &= ~MPPC_OK;
   return (rtn);
      }
  } else {
      rtn &= ~MPPC_OK;
      return (rtn);
  }
     }
 }

 val = getbyte(isrc, i, l);
 if ((val & 0x80) == 0x00) {
     len = 3;
     bits--;
     getbits(isrc, 1 , &i ,&l);
 } else if ((val & 0xc0) == 0x80) {
     len = 0x04 | ((val>>4) & 0x03);
     bits -= 4;
     getbits(isrc, 4 , &i ,&l);
 } else if ((val & 0xe0) == 0xc0) {
     len = 0x08 | ((val>>2) & 0x07);
     bits -= 6;
     getbits(isrc, 6 , &i ,&l);
 } else if ((val & 0xf0) == 0xe0) {
     len = 0x10 | (val & 0x0f);
     bits -= 8;
     i++;
 } else {
     bits -= 8;
     val = (val << 8) | getbyte(isrc, ++i, l);
     if ((val & 0xf800) == 0xf000) {
  len = 0x0020 | ((val >> 6) & 0x001f);
  bits -= 2;
  getbits(isrc, 2 , &i ,&l);
     } else if ((val & 0xfc00) == 0xf800) {
  len = 0x0040 | ((val >> 4) & 0x003f);
  bits -= 4;
  getbits(isrc, 4 , &i ,&l);
     } else if ((val & 0xfe00) == 0xfc00) {
  len = 0x0080 | ((val >> 2) & 0x007f);
  bits -= 6;
  getbits(isrc, 6 , &i ,&l);
     } else if ((val & 0xff00) == 0xfe00) {
  len = 0x0100 | (val & 0x00ff);
  bits -= 8;
  i++;
     } else {
  bits -= 8;
  val = (val << 8) | getbyte(isrc, ++i, l);
  if ((val & 0xff8000) == 0xff0000) {
      len = 0x000200 | ((val >> 6) & 0x0001ff);
      bits -= 2;
      getbits(isrc, 2 , &i ,&l);
  } else if ((val & 0xffc000) == 0xff8000) {
      len = 0x000400 | ((val >> 4) & 0x0003ff);
      bits -= 4;
      getbits(isrc, 4 , &i ,&l);
  } else if ((val & 0xffe000) == 0xffc000) {
      len = 0x000800 | ((val >> 2) & 0x0007ff);
      bits -= 6;
      getbits(isrc, 6 , &i ,&l);
  } else if ((val & 0xfff000) == 0xffe000) {
      len = 0x001000 | (val & 0x000fff);
      bits -= 8;
      i++;
  } else {
      rtn &= ~MPPC_OK;
      return (rtn);
  }
     }
 }

 s = state->hist + state->histptr;
 state->histptr += len;
 olen += len;
 if (state->histptr < 2*MPPE_HIST_LEN) {
     lamecopy(s, s - off, len);
 } else {

     rtn &= ~MPPC_OK;
     return (rtn);
 }
    }


    len = olen;
    if ((hist[0] & 0x01) != 0) {
 (*dst)[0] = 0;
 (*dst)++;
 len++;
    }

    if (len <= *dstCnt) {

 memcpy(*dst, hist, olen);
    } else {

 rtn |= MPPC_DEST_EXHAUSTED;
    }

    *src += *srcCnt;
    *srcCnt = 0;
    *dst += len;
    *dstCnt -= len;

    return (rtn);
}
