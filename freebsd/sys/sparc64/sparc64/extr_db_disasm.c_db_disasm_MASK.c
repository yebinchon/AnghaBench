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
struct sparc_insn {unsigned int match; char* format; scalar_t__ name; } ;
typedef  int int64_t ;
typedef  scalar_t__ db_addr_t ;

/* Variables and functions */
 unsigned int FUNC0 (int,int) ; 
 int /*<<< orphan*/  DB_STGY_ANY ; 
 int /*<<< orphan*/  DB_STGY_PROC ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 unsigned int FUNC3 (int) ; 
 unsigned int FUNC4 (int) ; 
 unsigned int FUNC5 (int) ; 
 unsigned int FUNC6 (int) ; 
 unsigned int FUNC7 (int,int) ; 
 unsigned int FUNC8 (int,int,int) ; 
 int FUNC9 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/ * ccodes ; 
 unsigned int FUNC12 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * prefetch ; 
 int /*<<< orphan*/ * priv_regs ; 
 int /*<<< orphan*/ * regs ; 
 int /*<<< orphan*/  sparc_i ; 
 int /*<<< orphan*/ * state_regs ; 

db_addr_t
FUNC15(db_addr_t loc, bool altfmt)
{
	const struct sparc_insn* i_ptr = (struct sparc_insn *)&sparc_i;
	unsigned int insn, you_lose, bitmask;
	int matchp;
	const char* f_ptr, *cp;

	you_lose = 0;
	matchp = 0;
	insn = FUNC12(loc, 4, 0);

	if (insn == 0x01000000) {
		FUNC13("nop\n");
		return loc + 4;
	}

	while (i_ptr->name) {
		/* calculate YOU_LOSE value */
		bitmask= (i_ptr->match);
		you_lose = (~bitmask);

		if (((bitmask>>30) & 0x3) == 0x1) {
			/* Call */
			you_lose = ((~0x1)<<30);
		} else if (((bitmask>>30) & 0x3) == 0x0) {
			if (((bitmask>>22) & 0x7) == 0x4) {
				/* Sethi */
				you_lose &= (FUNC7(0x3,0x7));
			} else {
				/* Branches */
				you_lose &= (FUNC7(0x3,0x7) |
				    FUNC2(0xf));
			}
		} else if (((bitmask>>30) & 0x3) == 0x2 &&
			   ((bitmask>>19) & 0x3f) == 0x34) /* XXX */ {
			/* FPop1 */
			you_lose &= (FUNC8(0x3,0x3f,0x1) |
			    FUNC4(0x1ff));
		} else if (((bitmask>>30) & 0x3) == 0x2 &&
			   ((bitmask>>19) & 0x3f) == 0x3a) /* XXX */ {
			/* Tcc */
			you_lose &= (FUNC8(0x3,0x3f,0x1) | FUNC6(0xf));
		} else if (((bitmask>>30) & 0x3) == 0x2 &&
			   ((bitmask>>21) & 0xf) == 0x9 &&
			   ((bitmask>>19) & 0x3) != 0) /* XXX */ {
			/* shifts */
			you_lose &= (FUNC8(0x3,0x3f,0x1)) | FUNC5(1);
		} else if (((bitmask>>30) & 0x3) == 0x2 &&
			   ((bitmask>>19) & 0x3f) == 0x2c) /* XXX */ {
			/* cmov */
			you_lose &= (FUNC8(0x3,0x3f,0x1) | FUNC0(1,0xf));
		} else if (((bitmask>>30) & 0x3) == 0x2 &&
			   ((bitmask>>19) & 0x3f) == 0x35) /* XXX */ {
			/* fmov */
			you_lose &= (FUNC8(0x3,0x3f,0x1) | FUNC0(1,0xf));
		} else {
			you_lose &= (FUNC8(0x3,0x3f,0x1));
		}

		if (((bitmask & insn) == bitmask) && ((you_lose & insn) == 0)) {
			matchp = 1;
			break;
		}
		i_ptr++;
	}

	if (!matchp) {
		FUNC13("undefined\n");
		return loc + 4;
	}

	FUNC13("%s", i_ptr->name);

	f_ptr = i_ptr->format;

	for (cp = f_ptr; *cp; cp++) {
		if (*cp == ',') {
			for (;f_ptr < cp; f_ptr++)
				switch (*f_ptr) {
				case 'a':
					if (insn & FUNC1(1))
						FUNC13(",a");
					break;
				case 'p':
					if (insn & FUNC3(1))
						FUNC13(",pt");
					else
						FUNC13(",pn");
					break;
				}
			f_ptr++;
			break;
		}
	}
	FUNC13("      \t");

	while (*f_ptr) {
		switch (*f_ptr) {
			int64_t val;
		case '1':
			FUNC13("%%%s", regs[((insn >> 14) & 0x1f)]);
			break;
		case '2':
			FUNC13("%%%s", regs[(insn & 0x1f)]);
			break;
		case 'd':
			FUNC13("%%%s", regs[((insn >> 25) & 0x1f)]);
			break;
		case '3':
			FUNC13("%%f%d", ((insn >> 14) & 0x1f));
			break;
		case '4':
			FUNC13("%%f%d", (insn & 0x1f));
			break;
		case 'e':
			FUNC13("%%f%d", ((insn >> 25) & 0x1f));
			break;
		case 'i':
			/* simm13 -- signed */
			val = FUNC9(insn, 13);
			FUNC13("%s0x%x", FUNC10(val), (int)FUNC11(val));
			break;
		case 'j':
			/* simm11 -- signed */
			val = FUNC9(insn, 11);
			FUNC13("%s0x%x", FUNC10(val), (int)FUNC11(val));
			break;
		case 'l':
			val = (((insn>>20)&0x3)<<13)|(insn & 0x1fff);
			val = FUNC9(val, 16);
			FUNC14((db_addr_t)(loc + (4 * val)), DB_STGY_ANY);
			break;
		case 'm':
			FUNC14((db_addr_t)(loc + (4 * FUNC9(insn, 22))),
				DB_STGY_ANY);
			break;
		case 'u':
			FUNC14((db_addr_t)(loc + (4 * FUNC9(insn, 19))),
			    DB_STGY_ANY);
			break;
		case 'n':
			FUNC14((db_addr_t)(loc + (4 * FUNC9(insn, 30))),
			    DB_STGY_PROC);
			break;
		case 's':
			FUNC13("%%asi");
			break;
		case 't':
			FUNC13("0x%-2.2x", ((insn >> 5) & 0xff));
			break;
		case 'o':
			FUNC13("%%fcc%d", ((insn >> 25) & 0x3));
			break;
		case 'p':
		case '7':
			FUNC13("[%%%s + %%%s]",
				  regs[((insn >> 14) & 0x1f)],
				  regs[(insn & 0x1f)]);
			if (*f_ptr == '7')
				FUNC13(" %d", ((insn >> 5) & 0xff));
			break;
		case 'q':
		case '8':
			val = FUNC9(insn, 13);
			FUNC13("[%%%s %c 0x%x]",
				regs[((insn >> 14) & 0x1f)],
				(int)((val<0)?'-':'+'),
				(int)FUNC11(val));
			if (*f_ptr == '8')
				FUNC13(" %%asi");
			break;
		case '5':
			FUNC13("%%fsr");
			break;
		case '6':
			FUNC13("%%fsr");
			break;
		case '9':
			FUNC13("0x%xl",
				  ((insn & 0xf) | ((insn >> 4) & 0x7)));
			break;
		case '0':
			FUNC13("%%%s", ccodes[((insn >> 11) & 0x3) + 4]);
			break;
		case '.':
			FUNC13("%%%s", ccodes[((insn >> 11) & 0x7)]);
			break;
		case 'r':
			FUNC13("#%s", prefetch[((insn >> 25) & 0x1f)]);
			break;
		case 'A':
			FUNC13("%%%s", priv_regs[((insn >> 14) & 0x1f)]);
			break;
		case 'B':
			FUNC13("%%%s", state_regs[((insn >> 14) & 0x1f)]);
			break;
		case 'C':
			FUNC13("%%hi(0x%x)", ((insn & 0x3fffff) << 10));
			break;
		case 'D':
			FUNC13("0x%x", (insn & 0x1f));
			break;
		case 'E':
			FUNC13("%d", (insn & 0x3f));
			break;
		case 'F':
			FUNC13("%d", (insn & 0x3f));
			break;
		case 'G':
			FUNC13("%%%s", priv_regs[((insn >> 25) & 0x1f)]);
			break;
		case 'H':
			FUNC13("%%%s", state_regs[((insn >> 25) & 0x1f)]);
			break;
		default:
			FUNC13("(UNKNOWN)");
			break;
		}
		if (*(++f_ptr))
			FUNC13(", ");
	}

	FUNC13("\n");

	return (loc + 4);
}