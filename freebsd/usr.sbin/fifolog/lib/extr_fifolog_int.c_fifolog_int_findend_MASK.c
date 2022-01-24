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
struct fifolog_file {int logsize; int /*<<< orphan*/  recbuf; } ;
typedef  unsigned int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fifolog_file const*) ; 
 int FUNC3 (struct fifolog_file const*,unsigned int) ; 

const char *
FUNC4(const struct fifolog_file *ff, off_t *last)
{
	off_t o, s;
	int e;
	unsigned seq0, seq;

	FUNC2(ff);

	o = 0;
	e = FUNC3(ff, o);
	if (e)
		return("Read error, first record");

	seq0 = FUNC1(ff->recbuf);

	/* If the first records sequence is zero, the fifolog is empty */
	if (seq0 == 0) {
		*last = o;
		return (NULL);
	}

	/* Do a binary search for a discontinuity in the sequence numbers */
	s = ff->logsize / 2;
	do {
		e = FUNC3(ff, o + s);
		if (e)
			return ("Read error while searching");
		seq = FUNC1(ff->recbuf);
		if (seq == seq0 + s) {
			o += s;
			seq0 = seq;
		}
		s /= 2;
		FUNC0(o < ff->logsize);
	} while (s > 0);

	*last = o;
	return (NULL);
}