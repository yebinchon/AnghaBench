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
struct uio {size_t uio_resid; } ;
struct ttyinq_block {char* tib_data; } ;
struct ttyinq {size_t ti_begin; size_t ti_linestart; size_t ti_end; size_t ti_reprint; struct ttyinq_block* ti_firstblock; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int ENXIO ; 
 size_t FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t TTYINQ_DATASIZE ; 
 int /*<<< orphan*/  FUNC3 (struct ttyinq*,struct ttyinq_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct ttyinq*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 scalar_t__ FUNC6 (struct tty*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty*) ; 
 int FUNC9 (char*,size_t,struct uio*) ; 

int
FUNC10(struct ttyinq *ti, struct tty *tp, struct uio *uio,
    size_t rlen, size_t flen)
{

	FUNC2(rlen <= uio->uio_resid);

	while (rlen > 0) {
		int error;
		struct ttyinq_block *tib;
		size_t cbegin, cend, clen;

		/* See if there still is data. */
		if (ti->ti_begin == ti->ti_linestart)
			return (0);
		tib = ti->ti_firstblock;
		if (tib == NULL)
			return (0);

		/*
		 * The end address should be the lowest of these three:
		 * - The write pointer
		 * - The blocksize - we can't read beyond the block
		 * - The end address if we could perform the full read
		 */
		cbegin = ti->ti_begin;
		cend = FUNC1(FUNC1(ti->ti_linestart, ti->ti_begin + rlen),
		    TTYINQ_DATASIZE);
		clen = cend - cbegin;
		FUNC2(clen >= flen);
		rlen -= clen;

		/*
		 * We can prevent buffering in some cases:
		 * - We need to read the block until the end.
		 * - We don't need to read the block until the end, but
		 *   there is no data beyond it, which allows us to move
		 *   the write pointer to a new block.
		 */
		if (cend == TTYINQ_DATASIZE || cend == ti->ti_end) {
			/*
			 * Fast path: zero copy. Remove the first block,
			 * so we can unlock the TTY temporarily.
			 */
			FUNC4(ti);
			ti->ti_begin = 0;

			/*
			 * Because we remove the first block, we must
			 * fix up the block offsets.
			 */
#define CORRECT_BLOCK(t) do {			\
	if (t <= TTYINQ_DATASIZE)		\
		t = 0;				\
	else					\
		t -= TTYINQ_DATASIZE;		\
} while (0)
			CORRECT_BLOCK(ti->ti_linestart);
			CORRECT_BLOCK(ti->ti_reprint);
			CORRECT_BLOCK(ti->ti_end);
#undef CORRECT_BLOCK

			/*
			 * Temporary unlock and copy the data to
			 * userspace. We may need to flush trailing
			 * bytes, like EOF characters.
			 */
			FUNC8(tp);
			error = FUNC9(tib->tib_data + cbegin,
			    clen - flen, uio);
			FUNC7(tp);

			/* Block can now be readded to the list. */
			FUNC3(ti, tib);
		} else {
			char ob[TTYINQ_DATASIZE - 1];

			/*
			 * Slow path: store data in a temporary buffer.
			 */
			FUNC5(ob, tib->tib_data + cbegin, clen - flen);
			ti->ti_begin += clen;
			FUNC2(ti->ti_begin < TTYINQ_DATASIZE);

			/* Temporary unlock and copy the data to userspace. */
			FUNC8(tp);
			error = FUNC9(ob, clen - flen, uio);
			FUNC7(tp);
		}

		if (error != 0)
			return (error);
		if (FUNC6(tp))
			return (ENXIO);
	}

	return (0);
}