#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* time_t ;
struct fifolog_reader {TYPE_1__* ff; } ;
typedef  int off_t ;
struct TYPE_4__ {int* recbuf; int logsize; int recsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fifolog_reader const*,int /*<<< orphan*/ ) ; 
 int FIFOLOG_FLG_SYNC ; 
 int /*<<< orphan*/  FIFOLOG_READER_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*) ; 
 char* FUNC4 (TYPE_1__*,int*) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

off_t
FUNC8(const struct fifolog_reader *fr, time_t t0)
{
	off_t o, s, st;
	time_t t, tt;
	unsigned seq, seqs;
	const char *retval;
	int e;

	FUNC0(fr, FIFOLOG_READER_MAGIC);

	/*
	 * First, find the first SYNC block
	 */
	o = 0;
	e = FUNC6(fr->ff, &o);
	if (e == 0)
		return (0);			/* empty fifolog */
	FUNC1(e == 1);

	FUNC1(fr->ff->recbuf[4] & FIFOLOG_FLG_SYNC);
	seq = FUNC2(fr->ff->recbuf);
	t = FUNC2(fr->ff->recbuf + 5);

	if (t > t0) {
		/* Check if there is a second older part we can use */
		retval = FUNC4(fr->ff, &s);
		if (retval != NULL)
			FUNC3(1, "%s", retval);
		s++;
		e = FUNC6(fr->ff, &s);
		if (e == 0)
			return (0);		/* empty fifolog */
		if (e == 1) {
			o = s;
			seq = FUNC2(fr->ff->recbuf);
			t = FUNC2(fr->ff->recbuf + 5);
		}
	}

	/* Now do a binary search to find the sync block right before t0 */
	s = st = (fr->ff->logsize - o) / 2;
	while (s > 1) {
		/* We know we shouldn't wrap */
		if (o + st > fr->ff->logsize + 1) {
			s = st = s / 2;
			continue;
		}
		e = FUNC5(fr->ff, o + st);
		if (e) {
			s = st = s / 2;
			continue;
		}
		/* If not in same part, sequence won't match */
		seqs = FUNC2(fr->ff->recbuf);
		if (seqs != seq + st) {
			s = st = s / 2;
			continue;
		}
		/* If not sync block, try next */
		if (!(fr->ff->recbuf[4] & FIFOLOG_FLG_SYNC)) {
			st++;
			continue;
		}
		/* Check timestamp */
		tt = FUNC2(fr->ff->recbuf + 5);
		if (tt >= t0) {
			s = st = s / 2;
			continue;
		}
		o += st;
		seq = seqs;
	}
	FUNC7(stderr, "Read from %x\n", o * fr->ff->recsize);
	return (o);
}