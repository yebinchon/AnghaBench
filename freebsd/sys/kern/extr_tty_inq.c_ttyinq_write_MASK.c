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
struct ttyinq_block {scalar_t__ tib_data; struct ttyinq_block* tib_next; } ;
struct ttyinq {unsigned int ti_end; scalar_t__ ti_begin; struct ttyinq_block* ti_lastblock; struct ttyinq_block* ti_firstblock; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int TTYINQ_DATASIZE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct ttyinq_block*,unsigned int,size_t,int) ; 

size_t
FUNC4(struct ttyinq *ti, const void *buf, size_t nbytes, int quote)
{
	const char *cbuf = buf;
	struct ttyinq_block *tib;
	unsigned int boff;
	size_t l;

	while (nbytes > 0) {
		boff = ti->ti_end % TTYINQ_DATASIZE;

		if (ti->ti_end == 0) {
			/* First time we're being used or drained. */
			FUNC1(ti->ti_begin == 0);
			tib = ti->ti_firstblock;
			if (tib == NULL) {
				/* Queue has no blocks. */
				break;
			}
			ti->ti_lastblock = tib;
		} else if (boff == 0) {
			/* We reached the end of this block on last write. */
			tib = ti->ti_lastblock->tib_next;
			if (tib == NULL) {
				/* We've reached the watermark. */
				break;
			}
			ti->ti_lastblock = tib;
		} else {
			tib = ti->ti_lastblock;
		}

		/* Don't copy more than was requested. */
		l = FUNC0(nbytes, TTYINQ_DATASIZE - boff);
		FUNC1(l > 0);
		FUNC2(tib->tib_data + boff, cbuf, l);

		/* Set the quoting bits for the proper region. */
		FUNC3(tib, boff, l, quote);

		cbuf += l;
		nbytes -= l;
		ti->ti_end += l;
	}

	return (cbuf - (const char *)buf);
}