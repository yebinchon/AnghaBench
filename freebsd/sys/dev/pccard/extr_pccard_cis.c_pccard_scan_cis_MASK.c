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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int u_long ;
typedef  int u_int ;
struct resource {int dummy; } ;
struct pccard_tuple {int ptr; int mult; int code; int length; scalar_t__ memh; int /*<<< orphan*/  memt; } ;
typedef  scalar_t__ (* pccard_scan_t ) (struct pccard_tuple*,void*) ;
typedef  int /*<<< orphan*/  int16_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
#define  CISTPL_CHECKSUM 132 
 int CISTPL_END ; 
 int const CISTPL_LINKTARGET ; 
#define  CISTPL_LONGLINK_A 131 
#define  CISTPL_LONGLINK_C 130 
#define  CISTPL_LONGLINK_MFC 129 
#define  CISTPL_NO_LINK 128 
 int CISTPL_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  PCCARD_A_MEM_ATTR ; 
 int /*<<< orphan*/  PCCARD_A_MEM_COM ; 
 int PCCARD_CIS_SIZE ; 
 char PCCARD_MFC_MEM_COMMON ; 
 int RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 struct resource* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 void* FUNC9 (struct pccard_tuple*,int) ; 
 char FUNC10 (struct pccard_tuple*,int) ; 
 int FUNC11 (struct pccard_tuple*,int) ; 
 void* FUNC12 (struct pccard_tuple*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (struct resource*) ; 
 int /*<<< orphan*/  FUNC15 (struct resource*) ; 
 int /*<<< orphan*/  FUNC16 (struct resource*) ; 
 int FUNC17 (int) ; 
 scalar_t__ FUNC18 (struct pccard_tuple*,void*) ; 
 scalar_t__ FUNC19 (struct pccard_tuple*,void*) ; 
 scalar_t__ FUNC20 (struct pccard_tuple*,void*) ; 
 scalar_t__ FUNC21 (struct pccard_tuple*,void*) ; 
 scalar_t__ FUNC22 (struct pccard_tuple*,void*) ; 
 scalar_t__ FUNC23 (struct pccard_tuple*,void*) ; 

int
FUNC24(device_t bus, device_t dev, pccard_scan_t fct, void *arg)
{
	struct resource *res;
	int rid;
	struct pccard_tuple tuple;
	int longlink_present;
	int longlink_common;
	u_long longlink_addr;		/* Type suspect */
	int mfc_count;
	int mfc_index;
#ifdef PCCARDCISDEBUG
	int cis_none_cnt = 10;	/* Only report 10 CIS_NONEs */
#endif
	struct {
		int	common;
		u_long	addr;
	} mfc[256 / 5];
	int ret;

	ret = 0;

	/* allocate some memory */

	/*
	 * Some reports from the field suggest that a 64k memory boundary
	 * helps card CIS being able to be read.  Try it here and see what
	 * the results actually are.  I'm not sure I understand why this
	 * would make cards work better, but it is easy enough to test.
	 */
	rid = 0;
	res = FUNC3(dev, SYS_RES_MEMORY, &rid,
	    PCCARD_CIS_SIZE, RF_ACTIVE | FUNC17(64*1024));
	if (res == NULL) {
		FUNC6(dev, "can't alloc memory to read attributes\n");
		return -1;
	}
	FUNC0(bus, dev, SYS_RES_MEMORY, rid, PCCARD_A_MEM_ATTR);
	tuple.memt = FUNC15(res);
	tuple.memh = FUNC14(res);
	tuple.ptr = 0;

	FUNC2(("cis mem map %#x (resource: %#jx)\n",
	    (unsigned int) tuple.memh, FUNC16(res)));

	tuple.mult = 2;

	longlink_present = 1;
	longlink_common = 1;
	longlink_addr = 0;

	mfc_count = 0;
	mfc_index = 0;

	FUNC1((dev, "CIS tuple chain:\n"));

	while (1) {
		while (1) {
			/*
			 * Perform boundary check for insane cards.
			 * If CIS is too long, simulate CIS end.
			 * (This check may not be sufficient for
			 * malicious cards.)
			 */
			if (tuple.mult * tuple.ptr >= PCCARD_CIS_SIZE - 1
			    - 32 /* ad hoc value */ ) {
				FUNC13("CIS is too long -- truncating\n");
				tuple.code = CISTPL_END;
			} else {
				/* get the tuple code */
				tuple.code = FUNC9(&tuple, tuple.ptr);
			}

			/* two special-case tuples */

			if (tuple.code == CISTPL_NULL) {
#ifdef PCCARDCISDEBUG
				if (cis_none_cnt > 0)
					DPRINTF(("CISTPL_NONE\n 00\n"));
				else if (cis_none_cnt == 0)
					DPRINTF(("TOO MANY CIS_NONE\n"));
				cis_none_cnt--;
#endif
				if ((*fct)(&tuple, arg)) {
					ret = 1;
					goto done;
				}
				tuple.ptr++;
				continue;
			} else if (tuple.code == CISTPL_END) {
				FUNC2(("CISTPL_END\n ff\n"));
				/* Call the function for the END tuple, since
				   the CIS semantics depend on it */
				if ((*fct)(&tuple, arg)) {
					ret = 1;
					goto done;
				}
				tuple.ptr++;
				break;
			}
			/* now all the normal tuples */

			tuple.length = FUNC9(&tuple, tuple.ptr + 1);
			switch (tuple.code) {
			case CISTPL_LONGLINK_A:
			case CISTPL_LONGLINK_C:
				if ((*fct)(&tuple, arg)) {
					ret = 1;
					goto done;
				}
				if (tuple.length < 4) {
					FUNC2(("CISTPL_LONGLINK_%s too "
					    "short %d\n",
					    longlink_common ? "C" : "A",
					    tuple.length));
					break;
				}
				longlink_present = 1;
				longlink_common = (tuple.code ==
				    CISTPL_LONGLINK_C) ? 1 : 0;
				longlink_addr = FUNC12(&tuple, 0);
				FUNC2(("CISTPL_LONGLINK_%s %#lx\n",
				    longlink_common ? "C" : "A",
				    longlink_addr));
				break;
			case CISTPL_NO_LINK:
				if ((*fct)(&tuple, arg)) {
					ret = 1;
					goto done;
				}
				longlink_present = 0;
				FUNC2(("CISTPL_NO_LINK\n"));
				break;
			case CISTPL_CHECKSUM:
				if ((*fct)(&tuple, arg)) {
					ret = 1;
					goto done;
				}
				if (tuple.length < 5) {
					FUNC2(("CISTPL_CHECKSUM too "
					    "short %d\n", tuple.length));
					break;
				} {
					int16_t offset;
					u_long addr, length;
					u_int cksum, sum;
					int i;

					offset = (uint16_t)
					    FUNC11(&tuple, 0);
					length = FUNC11(&tuple, 2);
					cksum = FUNC10(&tuple, 4);

					addr = tuple.ptr + offset;

					FUNC2(("CISTPL_CHECKSUM addr=%#lx "
					    "len=%#lx cksum=%#x",
					    addr, length, cksum));

					/*
					 * XXX do more work to deal with
					 * distant regions
					 */
					if ((addr >= PCCARD_CIS_SIZE) ||
					    ((addr + length) >=
					    PCCARD_CIS_SIZE)) {
						FUNC2((" skipped, "
						    "too distant\n"));
						break;
					}
					sum = 0;
					for (i = 0; i < length; i++)
						sum +=
						    FUNC5(tuple.memt,
						    tuple.memh,
						    addr + tuple.mult * i);
					if (cksum != (sum & 0xff)) {
						FUNC2((" failed sum=%#x\n",
						    sum));
						FUNC6(dev, 
						    "CIS checksum failed\n");
#if 0
						/*
						 * XXX Some working cards have
						 * XXX bad checksums!!
						 */
						ret = -1;
#endif
					} else {
						FUNC2((" ok\n"));
					}
				}
				break;
			case CISTPL_LONGLINK_MFC:
				if (tuple.length < 1) {
					FUNC2(("CISTPL_LONGLINK_MFC too "
					    "short %d\n", tuple.length));
					break;
				}
				if (((tuple.length - 1) % 5) != 0) {
					FUNC2(("CISTPL_LONGLINK_MFC bogus "
					    "length %d\n", tuple.length));
					break;
				}
				/*
				 * this is kind of ad hoc, as I don't have
				 * any real documentation
				 */
				{
					int i, tmp_count;

					/*
					 * put count into tmp var so that
					 * if we have to bail (because it's
					 * a bogus count) it won't be
					 * remembered for later use.
					 */
					tmp_count =
					    FUNC10(&tuple, 0);

					FUNC2(("CISTPL_LONGLINK_MFC %d",
					    tmp_count));

					/*
					 * make _sure_ it's the right size;
					 * if too short, it may be a weird
					 * (unknown/undefined) format
					 */
					if (tuple.length != (tmp_count*5 + 1)) {
						FUNC2((" bogus length %d\n",
						    tuple.length));
						break;
					}
					/*
					 * sanity check for a programming
					 * error which is difficult to find
					 * when debugging.
					 */
					if (tmp_count >
					    FUNC7(sizeof mfc, sizeof mfc[0]))
						FUNC8("CISTPL_LONGLINK_MFC mfc "
						    "count would blow stack");
                                        mfc_count = tmp_count;
					for (i = 0; i < mfc_count; i++) {
						mfc[i].common =
						    (FUNC10(&tuple,
						    1 + 5 * i) ==
						    PCCARD_MFC_MEM_COMMON) ?
						    1 : 0;
						mfc[i].addr =
						    FUNC12(&tuple,
						    1 + 5 * i + 1);
						FUNC2((" %s:%#lx",
						    mfc[i].common ? "common" :
						    "attr", mfc[i].addr));
					}
					FUNC2(("\n"));
				}
				/*
				 * for LONGLINK_MFC, fall through to the
				 * function.  This tuple has structural and
				 * semantic content.
				 */
			default:
				{
					if ((*fct)(&tuple, arg)) {
						ret = 1;
						goto done;
					}
				}
				break;
			}	/* switch */
#ifdef PCCARDCISDEBUG
			/* print the tuple */
			{
				int i;

				DPRINTF((" %#02x %#02x", tuple.code,
				    tuple.length));

				for (i = 0; i < tuple.length; i++) {
					DPRINTF((" %#02x",
					    pccard_tuple_read_1(&tuple, i)));
					if ((i % 16) == 13)
						DPRINTF(("\n"));
				}

				if ((i % 16) != 14)
					DPRINTF(("\n"));
			}
#endif
			/* skip to the next tuple */
			tuple.ptr += 2 + tuple.length;
		}

		/*
		 * the chain is done.  Clean up and move onto the next one,
		 * if any.  The loop is here in the case that there is an MFC
		 * card with no longlink (which defaults to existing, == 0).
		 * In general, this means that if one pointer fails, it will
		 * try the next one, instead of just bailing.
		 */
		while (1) {
			if (longlink_present) {
				FUNC0(bus, dev, SYS_RES_MEMORY,
				    rid, longlink_common ?
				    PCCARD_A_MEM_COM : PCCARD_A_MEM_ATTR);
				FUNC2(("cis mem map %#x\n",
				    (unsigned int) tuple.memh));
				tuple.mult = longlink_common ? 1 : 2;
				tuple.ptr = longlink_addr;
				longlink_present = 0;
				longlink_common = 1;
				longlink_addr = 0;
			} else if (mfc_count && (mfc_index < mfc_count)) {
				FUNC0(bus, dev, SYS_RES_MEMORY,
				    rid, mfc[mfc_index].common ?
				    PCCARD_A_MEM_COM : PCCARD_A_MEM_ATTR);
				FUNC2(("cis mem map %#x\n",
				    (unsigned int) tuple.memh));
				/* set parse state, and point at the next one */
				tuple.mult = mfc[mfc_index].common ? 1 : 2;
				tuple.ptr = mfc[mfc_index].addr;
				mfc_index++;
			} else {
				goto done;
			}

			/* make sure that the link is valid */
			tuple.code = FUNC9(&tuple, tuple.ptr);
			if (tuple.code != CISTPL_LINKTARGET) {
				FUNC2(("CISTPL_LINKTARGET expected, "
				    "code %#02x observed\n", tuple.code));
				continue;
			}
			tuple.length = FUNC9(&tuple, tuple.ptr + 1);
			if (tuple.length < 3) {
				FUNC2(("CISTPL_LINKTARGET too short %d\n",
				    tuple.length));
				continue;
			}
			if ((FUNC10(&tuple, 0) != 'C') ||
			    (FUNC10(&tuple, 1) != 'I') ||
			    (FUNC10(&tuple, 2) != 'S')) {
				FUNC2(("CISTPL_LINKTARGET magic "
				    "%02x%02x%02x incorrect\n",
				    FUNC10(&tuple, 0),
				    FUNC10(&tuple, 1),
				    FUNC10(&tuple, 2)));
				continue;
			}
			tuple.ptr += 2 + tuple.length;
			break;
		}
	}

done:
	FUNC4(dev, SYS_RES_MEMORY, rid, res);

	return (ret);
}