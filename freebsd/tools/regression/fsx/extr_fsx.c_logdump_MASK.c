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
struct log_entry {int operation; int* args; } ;

/* Variables and functions */
 int LOGSIZE ; 
#define  OP_CLOSEOPEN 135 
#define  OP_INVALIDATE 134 
#define  OP_MAPREAD 133 
#define  OP_MAPWRITE 132 
#define  OP_READ 131 
#define  OP_SKIPPED 130 
#define  OP_TRUNCATE 129 
#define  OP_WRITE 128 
 int badoff ; 
 int logcount ; 
 int logptr ; 
 struct log_entry* oplog ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1(void)
{
	struct log_entry	*lp;
	int	i, count, down, opnum;

	FUNC0("LOG DUMP (%d total operations):\n", logcount);
	if (logcount < LOGSIZE) {
		i = 0;
		count = logcount;
	} else {
		i = logptr;
		count = LOGSIZE;
	}

	opnum = i + 1 + (logcount/LOGSIZE)*LOGSIZE;
	for ( ; count > 0; count--) {
		lp = &oplog[i];

		if (lp->operation == OP_CLOSEOPEN ||
		    lp->operation == OP_INVALIDATE) {
			switch (lp->operation) {
			case OP_CLOSEOPEN:
				FUNC0("\t\tCLOSE/OPEN\n");
				break;
			case OP_INVALIDATE:
				FUNC0("\t\tMS_INVALIDATE\n");
				break;
			}
			i++;
			if (i == LOGSIZE)
				i = 0;
			continue;
		}

		FUNC0("%d(%d mod 256): ", opnum, opnum%256);
		switch (lp->operation) {
		case OP_MAPREAD:
			FUNC0("MAPREAD\t0x%x thru 0x%x\t(0x%x bytes)",
			    lp->args[0], lp->args[0] + lp->args[1] - 1,
			    lp->args[1]);
			if (badoff >= lp->args[0] && badoff <
						     lp->args[0] + lp->args[1])
				FUNC0("\t***RRRR***");
			break;
		case OP_MAPWRITE:
			FUNC0("MAPWRITE 0x%x thru 0x%x\t(0x%x bytes)",
			    lp->args[0], lp->args[0] + lp->args[1] - 1,
			    lp->args[1]);
			if (badoff >= lp->args[0] && badoff <
						     lp->args[0] + lp->args[1])
				FUNC0("\t******WWWW");
			break;
		case OP_READ:
			FUNC0("READ\t0x%x thru 0x%x\t(0x%x bytes)",
			    lp->args[0], lp->args[0] + lp->args[1] - 1,
			    lp->args[1]);
			if (badoff >= lp->args[0] &&
			    badoff < lp->args[0] + lp->args[1])
				FUNC0("\t***RRRR***");
			break;
		case OP_WRITE:
			{
				int offset = lp->args[0];
				int len = lp->args[1];
				int oldlen = lp->args[2];

				FUNC0("WRITE\t0x%x thru 0x%x\t(0x%x bytes)",
				    offset, offset + len - 1,
				    len);
				if (offset > oldlen)
					FUNC0(" HOLE");
				else if (offset + len > oldlen)
					FUNC0(" EXTEND");
				if ((badoff >= offset || badoff >=oldlen) &&
				    badoff < offset + len)
					FUNC0("\t***WWWW");
			}
			break;
		case OP_TRUNCATE:
			down = lp->args[0] < lp->args[1];
			FUNC0("TRUNCATE %s\tfrom 0x%x to 0x%x",
			    down ? "DOWN" : "UP", lp->args[1], lp->args[0]);
			if (badoff >= lp->args[!down] &&
			    badoff < lp->args[!!down])
				FUNC0("\t******WWWW");
			break;
		case OP_SKIPPED:
			FUNC0("SKIPPED (no operation)");
			break;
		default:
			FUNC0("BOGUS LOG ENTRY (operation code = %d)!",
			    lp->operation);
		}
		FUNC0("\n");
		opnum++;
		i++;
		if (i == LOGSIZE)
			i = 0;
	}
}