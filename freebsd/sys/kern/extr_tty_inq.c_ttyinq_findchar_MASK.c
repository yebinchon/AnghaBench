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
struct ttyinq_block {char* tib_data; } ;
struct ttyinq {unsigned int ti_begin; size_t ti_linestart; struct ttyinq_block* ti_firstblock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ttyinq_block*,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int TTYINQ_DATASIZE ; 
 scalar_t__ FUNC3 (char const*,char) ; 

size_t
FUNC4(struct ttyinq *ti, const char *breakc, size_t maxlen,
    char *lastc)
{
	struct ttyinq_block *tib = ti->ti_firstblock;
	unsigned int boff = ti->ti_begin;
	unsigned int bend = FUNC1(FUNC1(TTYINQ_DATASIZE, ti->ti_linestart),
	    ti->ti_begin + maxlen);

	FUNC2(maxlen > 0);

	if (tib == NULL)
		return (0);

	while (boff < bend) {
		if (FUNC3(breakc, tib->tib_data[boff]) && !FUNC0(tib, boff)) {
			*lastc = tib->tib_data[boff];
			return (boff - ti->ti_begin + 1);
		}
		boff++;
	}

	/* Not found - just process the entire block. */
	return (bend - ti->ti_begin);
}