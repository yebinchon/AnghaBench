#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int u_long ;
typedef  int u_char ;
struct MPPC_comp_state {int* hist; int histptr; int* hash; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int MPPC_EXPANDED ; 
 int MPPC_OK ; 
 int MPPC_RESTART_HISTORY ; 
 int MPPC_SAVE_HISTORY ; 
 int MPPE_HIST_LEN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int,int*,int*) ; 

int FUNC7(u_char **src, u_char **dst, u_long *srcCnt, u_long *dstCnt, char *history, int flags, int undef)
{
    struct MPPC_comp_state	*state = (struct MPPC_comp_state*)history;
    uint32_t olen, off, len, idx, i, l;
    uint8_t *hist, *sbuf, *p, *q, *r, *s;    
    int	rtn = MPPC_OK;

   /*
    * At this point, to avoid possible buffer overflow caused by packet
    * expansion during/after compression, we should make sure we have
    * space for the worst case.

    * Maximum MPPC packet expansion is 12.5%. This is the worst case when
    * all octets in the input buffer are >= 0x80 and we cannot find any
    * repeated tokens.
    */
    if (*dstCnt < (*srcCnt * 9 / 8 + 2)) {
	rtn &= ~MPPC_OK;
	return (rtn);
    }

    /* We can't compress more then MPPE_HIST_LEN bytes in a call. */
    if (*srcCnt > MPPE_HIST_LEN) {
	rtn &= ~MPPC_OK;
	return (rtn);
    }

    hist = state->hist + MPPE_HIST_LEN;
    /* check if there is enough room at the end of the history */
    if (state->histptr + *srcCnt >= 2*MPPE_HIST_LEN) {
	rtn |= MPPC_RESTART_HISTORY;
	state->histptr = MPPE_HIST_LEN;
	FUNC3(state->hist, hist, MPPE_HIST_LEN);
    }
    /* Add packet to the history. */
    sbuf = state->hist + state->histptr;
    FUNC3(sbuf, *src, *srcCnt);
    state->histptr += *srcCnt;

    /* compress data */
    r = sbuf + *srcCnt;
    **dst = olen = i = 0;
    l = 8;
    while (i < *srcCnt - 2) {
	s = q = sbuf + i;

	/* Prognose matching position using hash function. */
	idx = FUNC0(s);
	p = hist + state->hash[idx];
	state->hash[idx] = (uint16_t) (s - hist);
	if (p > s)	/* It was before MPPC_RESTART_HISTORY. */
	    p -= MPPE_HIST_LEN;	/* Try previous history buffer. */
	off = s - p;

	/* Check our prognosis. */
	if (off > MPPE_HIST_LEN - 1 || off < 1 || *p++ != *s++ ||
	    *p++ != *s++ || *p++ != *s++) {
	    /* No match found; encode literal byte. */
	    if ((*src)[i] < 0x80) {		/* literal byte < 0x80 */
		FUNC6(*dst, (uint32_t) (*src)[i], 8, &olen, &l);
	    } else {				/* literal byte >= 0x80 */
		FUNC4(*dst, (uint32_t) (0x100|((*src)[i]&0x7f)), 9,
		    &olen, &l);
	    }
	    ++i;
	    continue;
	}

	/* Find length of the matching fragment */
#if defined(__amd64__) || defined(__i386__)
	/* Optimization for CPUs without strict data aligning requirements */
	while ((*((uint32_t*)p) == *((uint32_t*)s)) && (s < (r - 3))) {
	    p+=4;
	    s+=4;
	}
#endif
	while((*p++ == *s++) && (s <= r));
	len = s - q - 1;
	i += len;

	/* At least 3 character match found; code data. */
	/* Encode offset. */
	if (off < 64) {			/* 10-bit offset; 0 <= offset < 64 */
	    FUNC4(*dst, 0x3c0|off, 10, &olen, &l);
	} else if (off < 320) {		/* 12-bit offset; 64 <= offset < 320 */
	    FUNC4(*dst, 0xe00|(off-64), 12, &olen, &l);
	} else if (off < 8192) {	/* 16-bit offset; 320 <= offset < 8192 */
	    FUNC4(*dst, 0xc000|(off-320), 16, &olen, &l);
	} else {		/* NOTREACHED */
	    FUNC1();
	    rtn &= ~MPPC_OK;
	    return (rtn);
	}

	/* Encode length of match. */
	if (len < 4) {			/* length = 3 */
	    FUNC6(*dst, 0, 1, &olen, &l);
	} else if (len < 8) {		/* 4 <= length < 8 */
	    FUNC6(*dst, 0x08|(len&0x03), 4, &olen, &l);
	} else if (len < 16) {		/* 8 <= length < 16 */
	    FUNC6(*dst, 0x30|(len&0x07), 6, &olen, &l);
	} else if (len < 32) {		/* 16 <= length < 32 */
	    FUNC6(*dst, 0xe0|(len&0x0f), 8, &olen, &l);
	} else if (len < 64) {		/* 32 <= length < 64 */
	    FUNC4(*dst, 0x3c0|(len&0x1f), 10, &olen, &l);
	} else if (len < 128) {		/* 64 <= length < 128 */
	    FUNC4(*dst, 0xf80|(len&0x3f), 12, &olen, &l);
	} else if (len < 256) {		/* 128 <= length < 256 */
	    FUNC4(*dst, 0x3f00|(len&0x7f), 14, &olen, &l);
	} else if (len < 512) {		/* 256 <= length < 512 */
	    FUNC4(*dst, 0xfe00|(len&0xff), 16, &olen, &l);
	} else if (len < 1024) {	/* 512 <= length < 1024 */
	    FUNC5(*dst, 0x3fc00|(len&0x1ff), 18, &olen, &l);
	} else if (len < 2048) {	/* 1024 <= length < 2048 */
	    FUNC5(*dst, 0xff800|(len&0x3ff), 20, &olen, &l);
	} else if (len < 4096) {	/* 2048 <= length < 4096 */
	    FUNC5(*dst, 0x3ff000|(len&0x7ff), 22, &olen, &l);
	} else if (len < 8192) {	/* 4096 <= length < 8192 */
	    FUNC5(*dst, 0xffe000|(len&0xfff), 24, &olen, &l);
	} else {	/* NOTREACHED */
	    rtn &= ~MPPC_OK;
	    return (rtn);
	}
    }

    /* Add remaining octets to the output. */
    while(*srcCnt - i > 0) {
	if ((*src)[i] < 0x80) {	/* literal byte < 0x80 */
	    FUNC6(*dst, (uint32_t) (*src)[i++], 8, &olen, &l);
	} else {		/* literal byte >= 0x80 */
	    FUNC4(*dst, (uint32_t) (0x100|((*src)[i++]&0x7f)), 9, &olen,
	        &l);
	}
    }

    /* Reset unused bits of the last output octet. */
    if ((l != 0) && (l != 8)) {
	FUNC6(*dst, 0, l, &olen, &l);
    }

    /* If result is bigger then original, set flag and flush history. */
    if ((*srcCnt < olen) || ((flags & MPPC_SAVE_HISTORY) == 0)) {
	if (*srcCnt < olen)
	    rtn |= MPPC_EXPANDED;
	FUNC2(history, sizeof(struct MPPC_comp_state));
	state->histptr = MPPE_HIST_LEN;
    }

    *src += *srcCnt;
    *srcCnt = 0;
    *dst += olen;
    *dstCnt -= olen;

    return (rtn);
}