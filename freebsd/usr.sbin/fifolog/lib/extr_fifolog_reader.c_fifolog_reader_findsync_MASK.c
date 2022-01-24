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
struct fifolog_file {scalar_t__ logsize; int* recbuf; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int FIFOLOG_FLG_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int FUNC3 (struct fifolog_file const*,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(const struct fifolog_file *ff, off_t *o)
{
	int e;
	unsigned seq, seqs;

	FUNC0(*o < ff->logsize);
	e = FUNC3(ff, *o);
	if (e)
		FUNC2(1, "Read error (%d) while looking for SYNC", e);
	seq = FUNC1(ff->recbuf);
	if (*o == 0 && seq == 0)
		return (0);

	if (ff->recbuf[4] & FIFOLOG_FLG_SYNC)
		return (1);		/* That was easy... */
	while(1) {
		FUNC0(*o < ff->logsize);
		(*o)++;
		seq++;
		if (*o == ff->logsize)
			return (2);	/* wraparound */
		e = FUNC3(ff, *o);
		if (e)
			FUNC2(1, "Read error (%d) while looking for SYNC", e);
		seqs = FUNC1(ff->recbuf);
		if (seqs != seq)
			return (3);		/* End of log */
		if (ff->recbuf[4] & FIFOLOG_FLG_SYNC)
			return (1);		/* Bingo! */
	}
}