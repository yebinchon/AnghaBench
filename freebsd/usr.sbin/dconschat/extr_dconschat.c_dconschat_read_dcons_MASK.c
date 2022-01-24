#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct dcons_state {TYPE_1__* port; } ;
struct dcons_ch {int gen; int pos; int size; scalar_t__ buf; } ;
struct TYPE_2__ {int optr; struct dcons_ch o; } ;

/* Variables and functions */
 int DCONS_GEN_MASK ; 
 int DCONS_GEN_SHIFT ; 
 int FUNC0 (int) ; 
 int DCONS_POS_MASK ; 
 scalar_t__ ETIMEDOUT ; 
 int MAX_XFER ; 
 int RETRY ; 
 int /*<<< orphan*/  FUNC1 (struct dcons_state*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct dcons_state*,char*,int,scalar_t__) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  stdout ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 

__attribute__((used)) static int
FUNC6(struct dcons_state *dc, int port, char *buf, int len)
{
	struct dcons_ch *ch;
	u_int32_t ptr, pos, gen, next_gen;
	int rlen, dlen, lost;
	int retry = RETRY;

	ch = &dc->port[port].o;
	ptr = dc->port[port].optr;
	gen = ptr >> DCONS_GEN_SHIFT;
	pos = ptr & DCONS_POS_MASK;
	if (gen == ch->gen && pos == ch->pos)
		return (-1);

	next_gen = FUNC0(ch->gen);
	/* XXX sanity check */
	if (gen == ch->gen) {
		if (pos > ch->pos)
			goto ok;
		lost = ch->size * DCONS_GEN_MASK - ch->pos;
		ch->pos = 0;
	} else if (gen == next_gen) {
		if (pos <= ch->pos)
			goto ok;
		lost = pos - ch->pos;
		ch->pos = pos;
	} else {
		lost = gen - ch->gen;
		if (lost < 0)
			lost += DCONS_GEN_MASK;
		if (verbose)
			FUNC4("[genskip %d]", lost);
		lost = lost * ch->size - ch->pos;
		ch->pos = 0;
		ch->gen = gen;
	}
	/* generation skipped !! */
	/* XXX discard */
	if (verbose)
		FUNC4("[lost %d]", lost);
ok:
	if (gen == ch->gen)
		rlen = pos - ch->pos;
	else
		rlen = ch->size - ch->pos;

	if (rlen > MAX_XFER)
		rlen = MAX_XFER;
	if (rlen > len)
		rlen = len;

#if 1
	if (verbose == 1)
		FUNC4("[%d]", rlen); FUNC3(stdout);
#endif

again:
	dlen = FUNC2(dc, buf, rlen, ch->buf + ch->pos);
	if (dlen < 0) {
		if (errno == ETIMEDOUT)
			if (retry -- > 0)
				goto again;
		FUNC1(dc, 0, "read buffer failed");
		return(-1);
	}
	if (dlen != rlen)
		FUNC5("dlen(%d) != rlen(%d)\n", dlen, rlen);
	ch->pos += dlen;
	if (ch->pos >= ch->size) {
		ch->gen = next_gen;
		ch->pos = 0;
		if (verbose)
			FUNC4("read_dcons: gen=%d", ch->gen);
	}
	return (dlen);
}