
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_long ;
typedef int u_char ;
struct MPPC_comp_state {int* hist; int histptr; int* hash; } ;


 int HASH (int*) ;
 int MPPC_EXPANDED ;
 int MPPC_OK ;
 int MPPC_RESTART_HISTORY ;
 int MPPC_SAVE_HISTORY ;
 int MPPE_HIST_LEN ;
 int __unreachable () ;
 int bzero (char*,int) ;
 int memcpy (int*,int*,int) ;
 int putbits16 (int*,int,int,int*,int*) ;
 int putbits24 (int*,int,int,int*,int*) ;
 int putbits8 (int*,int,int,int*,int*) ;

int MPPC_Compress(u_char **src, u_char **dst, u_long *srcCnt, u_long *dstCnt, char *history, int flags, int undef)
{
    struct MPPC_comp_state *state = (struct MPPC_comp_state*)history;
    uint32_t olen, off, len, idx, i, l;
    uint8_t *hist, *sbuf, *p, *q, *r, *s;
    int rtn = MPPC_OK;
    if (*dstCnt < (*srcCnt * 9 / 8 + 2)) {
 rtn &= ~MPPC_OK;
 return (rtn);
    }


    if (*srcCnt > MPPE_HIST_LEN) {
 rtn &= ~MPPC_OK;
 return (rtn);
    }

    hist = state->hist + MPPE_HIST_LEN;

    if (state->histptr + *srcCnt >= 2*MPPE_HIST_LEN) {
 rtn |= MPPC_RESTART_HISTORY;
 state->histptr = MPPE_HIST_LEN;
 memcpy(state->hist, hist, MPPE_HIST_LEN);
    }

    sbuf = state->hist + state->histptr;
    memcpy(sbuf, *src, *srcCnt);
    state->histptr += *srcCnt;


    r = sbuf + *srcCnt;
    **dst = olen = i = 0;
    l = 8;
    while (i < *srcCnt - 2) {
 s = q = sbuf + i;


 idx = HASH(s);
 p = hist + state->hash[idx];
 state->hash[idx] = (uint16_t) (s - hist);
 if (p > s)
     p -= MPPE_HIST_LEN;
 off = s - p;


 if (off > MPPE_HIST_LEN - 1 || off < 1 || *p++ != *s++ ||
     *p++ != *s++ || *p++ != *s++) {

     if ((*src)[i] < 0x80) {
  putbits8(*dst, (uint32_t) (*src)[i], 8, &olen, &l);
     } else {
  putbits16(*dst, (uint32_t) (0x100|((*src)[i]&0x7f)), 9,
      &olen, &l);
     }
     ++i;
     continue;
 }




 while ((*((uint32_t*)p) == *((uint32_t*)s)) && (s < (r - 3))) {
     p+=4;
     s+=4;
 }

 while((*p++ == *s++) && (s <= r));
 len = s - q - 1;
 i += len;



 if (off < 64) {
     putbits16(*dst, 0x3c0|off, 10, &olen, &l);
 } else if (off < 320) {
     putbits16(*dst, 0xe00|(off-64), 12, &olen, &l);
 } else if (off < 8192) {
     putbits16(*dst, 0xc000|(off-320), 16, &olen, &l);
 } else {
     __unreachable();
     rtn &= ~MPPC_OK;
     return (rtn);
 }


 if (len < 4) {
     putbits8(*dst, 0, 1, &olen, &l);
 } else if (len < 8) {
     putbits8(*dst, 0x08|(len&0x03), 4, &olen, &l);
 } else if (len < 16) {
     putbits8(*dst, 0x30|(len&0x07), 6, &olen, &l);
 } else if (len < 32) {
     putbits8(*dst, 0xe0|(len&0x0f), 8, &olen, &l);
 } else if (len < 64) {
     putbits16(*dst, 0x3c0|(len&0x1f), 10, &olen, &l);
 } else if (len < 128) {
     putbits16(*dst, 0xf80|(len&0x3f), 12, &olen, &l);
 } else if (len < 256) {
     putbits16(*dst, 0x3f00|(len&0x7f), 14, &olen, &l);
 } else if (len < 512) {
     putbits16(*dst, 0xfe00|(len&0xff), 16, &olen, &l);
 } else if (len < 1024) {
     putbits24(*dst, 0x3fc00|(len&0x1ff), 18, &olen, &l);
 } else if (len < 2048) {
     putbits24(*dst, 0xff800|(len&0x3ff), 20, &olen, &l);
 } else if (len < 4096) {
     putbits24(*dst, 0x3ff000|(len&0x7ff), 22, &olen, &l);
 } else if (len < 8192) {
     putbits24(*dst, 0xffe000|(len&0xfff), 24, &olen, &l);
 } else {
     rtn &= ~MPPC_OK;
     return (rtn);
 }
    }


    while(*srcCnt - i > 0) {
 if ((*src)[i] < 0x80) {
     putbits8(*dst, (uint32_t) (*src)[i++], 8, &olen, &l);
 } else {
     putbits16(*dst, (uint32_t) (0x100|((*src)[i++]&0x7f)), 9, &olen,
         &l);
 }
    }


    if ((l != 0) && (l != 8)) {
 putbits8(*dst, 0, l, &olen, &l);
    }


    if ((*srcCnt < olen) || ((flags & MPPC_SAVE_HISTORY) == 0)) {
 if (*srcCnt < olen)
     rtn |= MPPC_EXPANDED;
 bzero(history, sizeof(struct MPPC_comp_state));
 state->histptr = MPPE_HIST_LEN;
    }

    *src += *srcCnt;
    *srcCnt = 0;
    *dst += olen;
    *dstCnt -= olen;

    return (rtn);
}
