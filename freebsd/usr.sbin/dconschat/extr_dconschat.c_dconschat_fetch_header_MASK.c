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
struct dcons_state {scalar_t__ paddr; int flags; TYPE_1__* port; } ;
struct dcons_ch {int size; scalar_t__ buf; int gen; int pos; } ;
struct dcons_buf {scalar_t__ magic; int /*<<< orphan*/ * ioffset; int /*<<< orphan*/ * ooffset; int /*<<< orphan*/ * iptr; int /*<<< orphan*/ * isize; int /*<<< orphan*/ * optr; int /*<<< orphan*/ * osize; int /*<<< orphan*/  version; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  ebuf ;
struct TYPE_2__ {struct dcons_ch i; struct dcons_ch o; } ;

/* Variables and functions */
 int DCONS_GEN_SHIFT ; 
 int /*<<< orphan*/  DCONS_HEADER_SIZE ; 
 int /*<<< orphan*/  DCONS_MAGIC ; 
 int DCONS_NPORT ; 
 int DCONS_POS_MASK ; 
 int DCONS_VERSION ; 
 int F_REPLAY ; 
 int F_USE_CROM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct dcons_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct dcons_state*,int,char*) ; 
 scalar_t__ FUNC3 (struct dcons_state*,struct dcons_buf*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,...) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int
FUNC8(struct dcons_state *dc)
{
	char ebuf[64];
	struct dcons_buf dbuf;
	int j;

#if USE_CROM
	if (dc->paddr == 0 && (dc->flags & F_USE_CROM) != 0) {
		if (dconschat_get_crom(dc)) {
			dconschat_ready(dc, 0, "get crom failed");
			return (-1);
		}
	}
#endif

	if (FUNC3(dc, &dbuf, DCONS_HEADER_SIZE, dc->paddr) < 0) {
		FUNC2(dc, 0, "read header failed");
		return (-1);
	}
	if (dbuf.magic != FUNC4(DCONS_MAGIC)) {
		if ((dc->flags & F_USE_CROM) !=0)
			dc->paddr = 0;
		FUNC7(ebuf, sizeof(ebuf), "wrong magic 0x%08x", dbuf.magic);
		FUNC2(dc, 0, ebuf);
		return (-1);
	}
	if (FUNC5(dbuf.version) != DCONS_VERSION) {
		FUNC7(ebuf, sizeof(ebuf),
#if __FreeBSD_version < 500000
		    "wrong version %ld,%d",
#else
		    "wrong version %d,%d",
#endif
		    FUNC5(dbuf.version), DCONS_VERSION);
		/* XXX exit? */
		FUNC2(dc, 0, ebuf);
		return (-1);
	}

	for (j = 0; j < DCONS_NPORT; j++) {
		struct dcons_ch *o, *i;
		off_t newbuf;
		int new = 0;

		o = &dc->port[j].o;
		newbuf = dc->paddr + FUNC5(dbuf.ooffset[j]);
		o->size = FUNC5(dbuf.osize[j]);

		if (newbuf != o->buf) {
			/* buffer address has changes */
			new = 1;
			o->gen = FUNC5(dbuf.optr[j]) >> DCONS_GEN_SHIFT;
			o->pos = FUNC5(dbuf.optr[j]) & DCONS_POS_MASK;
			o->buf = newbuf;
		}

		i = &dc->port[j].i;
		i->size = FUNC5(dbuf.isize[j]);
		i->gen = FUNC5(dbuf.iptr[j]) >> DCONS_GEN_SHIFT;
		i->pos = FUNC5(dbuf.iptr[j]) & DCONS_POS_MASK;
		i->buf = dc->paddr + FUNC5(dbuf.ioffset[j]);

		if (verbose) {
			FUNC6("port %d   size offset   gen   pos\n", j);
#if __FreeBSD_version < 500000
			FUNC6("output: %5d %6ld %5d %5d\n"
				"input : %5d %6ld %5d %5d\n",
#else
			printf("output: %5d %6d %5d %5d\n"
				"input : %5d %6d %5d %5d\n",
#endif
			o->size, FUNC5(dbuf.ooffset[j]), o->gen, o->pos,
			i->size, FUNC5(dbuf.ioffset[j]), i->gen, i->pos);
		}

		if (FUNC0(&dc->port[j]) && new &&
		    (dc->flags & F_REPLAY) !=0) {
			if (o->gen > 0)
				o->gen --;
			else
				o->pos = 0;
		}
	}
	FUNC2(dc, 1, NULL);
	return(0);
}