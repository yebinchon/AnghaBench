#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int time_t ;
struct fifolog_writer {int* obuf; int seq; int flag; int* cnt; int recno; int starttime; int lastwrite; scalar_t__ obufsize; TYPE_2__* ff; } ;
typedef  int ssize_t ;
struct TYPE_4__ {long recsize; TYPE_1__* zs; int /*<<< orphan*/  fd; } ;
struct TYPE_3__ {int* next_out; scalar_t__ avail_out; } ;

/* Variables and functions */
 int FIFOLOG_FLG_1BYTE ; 
 int FIFOLOG_FLG_4BYTE ; 
 int FIFOLOG_FLG_SYNC ; 
 size_t FIFOLOG_PT_BYTES_POST ; 
 size_t FIFOLOG_PT_RUNTIME ; 
 size_t FIFOLOG_PT_WRITES ; 
 int Z_NO_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int,int) ; 

__attribute__((used)) static int
FUNC4(struct fifolog_writer *f, int fl, time_t now)
{
	long h, l = f->ff->zs->next_out - f->obuf;
	ssize_t i, w;
	int retval = 0;

	h = 4;					/* seq */
	FUNC1(f->obuf, f->seq);
	f->obuf[h] = f->flag;
	h += 1;					/* flag */
	if (f->flag & FIFOLOG_FLG_SYNC) {
		FUNC1(f->obuf + h, now);
		h += 4;				/* timestamp */
	}

	FUNC0(l <= (long)f->ff->recsize);	/* NB: l includes h */
	FUNC0(l >= h);

	/* We will never write an entirely empty buffer */
	if (l == h)
		return (0);

	if (l < (long)f->ff->recsize && fl == Z_NO_FLUSH)
		return (0);

	w = f->ff->recsize - l;
	if (w >  255) {
		FUNC1(f->obuf + f->ff->recsize - 4, w);
		f->obuf[4] |= FIFOLOG_FLG_4BYTE;
	} else if (w > 0) {
		f->obuf[f->ff->recsize - 1] = (uint8_t)w;
		f->obuf[4] |= FIFOLOG_FLG_1BYTE;
	}

	f->cnt[FIFOLOG_PT_BYTES_POST] += l - h;

	i = FUNC3(f->ff->fd, f->obuf, f->ff->recsize,
	    (f->recno + 1) * f->ff->recsize);
	if (i != f->ff->recsize)
		retval = -1;
	else
		retval = 1;

	f->cnt[FIFOLOG_PT_WRITES]++;
	f->cnt[FIFOLOG_PT_RUNTIME] = now - f->starttime;

	f->lastwrite = now;
	/*
	 * We increment these even on error, so as to properly skip bad,
	 * sectors or other light trouble.
	 */
	f->seq++;
	f->recno++;
	f->flag = 0;

	FUNC2(f->obuf, 0, f->obufsize);
	f->ff->zs->next_out = f->obuf + 5;
	f->ff->zs->avail_out = f->obufsize - 5;
	return (retval);
}