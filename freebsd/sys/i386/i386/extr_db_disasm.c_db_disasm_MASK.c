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
struct inst {char* i_name; int i_size; int i_mode; struct inst* i_extra; scalar_t__ i_has_modrm; } ;
struct i_addr {int dummy; } ;
typedef  int db_addr_t ;

/* Variables and functions */
#define  A 159 
#define  BX 158 
 int BYTE ; 
#define  CL 157 
#define  CR 156 
 int /*<<< orphan*/  DB_STGY_ANY ; 
 int /*<<< orphan*/  DB_STGY_XTRN ; 
#define  DI 155 
#define  DR 154 
#define  DX 153 
#define  Db 152 
#define  Dl 151 
#define  E 150 
#define  Eb 149 
#define  Eind 148 
#define  El 147 
#define  Ew 146 
 int FALSE ; 
#define  I 145 
#define  Ib 144 
#define  Iba 143 
#define  Ibs 142 
#define  Is 141 
#define  Iw 140 
 int LONG ; 
 int NONE ; 
#define  O 139 
#define  OS 138 
#define  R 137 
#define  Ri 136 
#define  Ril 135 
#define  Rw 134 
#define  S 133 
 int SDEP ; 
#define  SI 132 
#define  Si 131 
#define  TR 130 
 int TRUE ; 
 int WORD ; 
 struct inst* db_Grp1 ; 
 struct inst* db_Grp15 ; 
 char** db_Grp15b ; 
 struct inst* db_Grp2 ; 
 struct inst* db_Grp3 ; 
 struct inst* db_Grp4 ; 
 struct inst* db_Grp5 ; 
 struct inst* db_Grp6 ; 
 struct inst* db_Grp7 ; 
 struct inst* db_Grp8 ; 
 struct inst* db_Grp9 ; 
 struct inst db_bad_inst ; 
 int FUNC0 (int,int,int,int,char const*) ; 
 struct inst** db_inst_0f ; 
 struct inst* db_inst_table ; 
 int* db_lengths ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,struct i_addr*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int,int,struct i_addr*) ; 
 int /*<<< orphan*/ ** db_reg ; 
 int /*<<< orphan*/ * db_seg_reg ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 size_t FUNC7 (int) ; 
 size_t FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int) ; 
 int /*<<< orphan*/  kdb_frame ; 
#define  o1 129 
#define  o3 128 

db_addr_t
FUNC10(db_addr_t loc, bool altfmt)
{
	int	inst;
	int	size;
	int	short_addr;
	const char *	seg;
	const struct inst *	ip;
	const char *	i_name;
	int	i_size;
	int	i_mode;
	int	regmodrm = 0;
	bool	first;
	int	displ;
	int	prefix;
	int	rep;
	int	imm;
	int	imm2;
	int	len;
	struct i_addr	address;

	if (FUNC5(kdb_frame) == 16)
	   altfmt = !altfmt;
	FUNC9(inst, loc, 1, FALSE);
	if (altfmt) {
	    short_addr = TRUE;
	    size = WORD;
	}
	else {
	    short_addr = FALSE;
	    size = LONG;
	}
	seg = NULL;

	/*
	 * Get prefixes
	 */
	rep = FALSE;
	prefix = TRUE;
	do {
	    switch (inst) {
		case 0x66:
		    size = (altfmt ? LONG : WORD);
		    break;
		case 0x67:
		    short_addr = !altfmt;
		    break;
		case 0x26:
		    seg = "%es";
		    break;
		case 0x36:
		    seg = "%ss";
		    break;
		case 0x2e:
		    seg = "%cs";
		    break;
		case 0x3e:
		    seg = "%ds";
		    break;
		case 0x64:
		    seg = "%fs";
		    break;
		case 0x65:
		    seg = "%gs";
		    break;
		case 0xf0:
		    FUNC2("lock ");
		    break;
		case 0xf2:
		    FUNC2("repne ");
		    break;
		case 0xf3:
		    rep = TRUE;
		    break;
		default:
		    prefix = FALSE;
		    break;
	    }
	    if (prefix) {
		FUNC9(inst, loc, 1, FALSE);
	    }
	    if (rep == TRUE) {
		if (inst == 0x90) {
		    FUNC2("pause\n");
		    return (loc);
		}
		FUNC2("repe ");	/* XXX repe VS rep */
		rep = FALSE;
	    }
	} while (prefix);

	if (inst >= 0xd8 && inst <= 0xdf) {
	    loc = FUNC0(loc, inst, short_addr, size, seg);
	    FUNC2("\n");
	    return (loc);
	}

	if (inst == 0x0f) {
	    FUNC9(inst, loc, 1, FALSE);
	    ip = db_inst_0f[inst>>4];
	    if (ip == NULL) {
		ip = &db_bad_inst;
	    }
	    else {
		ip = &ip[inst&0xf];
	    }
	}
	else
	    ip = &db_inst_table[inst];

	if (ip->i_has_modrm) {
	    FUNC9(regmodrm, loc, 1, FALSE);
	    loc = FUNC4(loc, short_addr, regmodrm, &address);
	}

	i_name = ip->i_name;
	i_size = ip->i_size;
	i_mode = ip->i_mode;

	if (ip->i_extra == db_Grp1 || ip->i_extra == db_Grp2 ||
	    ip->i_extra == db_Grp6 || ip->i_extra == db_Grp7 ||
	    ip->i_extra == db_Grp8 || ip->i_extra == db_Grp9 ||
	    ip->i_extra == db_Grp15) {
	    i_name = ((const char * const *)ip->i_extra)[FUNC7(regmodrm)];
	}
	else if (ip->i_extra == db_Grp3) {
	    ip = ip->i_extra;
	    ip = &ip[FUNC7(regmodrm)];
	    i_name = ip->i_name;
	    i_mode = ip->i_mode;
	}
	else if (ip->i_extra == db_Grp4 || ip->i_extra == db_Grp5) {
	    ip = ip->i_extra;
	    ip = &ip[FUNC7(regmodrm)];
	    i_name = ip->i_name;
	    i_mode = ip->i_mode;
	    i_size = ip->i_size;
	}

	/* Special cases that don't fit well in the tables. */
	if (ip->i_extra == db_Grp7 && FUNC6(regmodrm) == 3) {
		switch (regmodrm) {
		case 0xc8:
			i_name = "monitor";
			i_size = NONE;
			i_mode = 0;
			break;
		case 0xc9:
			i_name = "mwait";
			i_size = NONE;
			i_mode = 0;
			break;
		}
	}
	if (ip->i_extra == db_Grp15 && FUNC6(regmodrm) == 3) {
		i_name = db_Grp15b[FUNC7(regmodrm)];
		i_size = NONE;
		i_mode = 0;
	}

	if (i_size == SDEP) {
	    if (size == WORD)
		FUNC2("%s", i_name);
	    else
		FUNC2("%s", (const char *)ip->i_extra);
	}
	else {
	    FUNC2("%s", i_name);
	    if (i_size != NONE) {
		if (i_size == BYTE) {
		    FUNC2("b");
		    size = BYTE;
		}
		else if (i_size == WORD) {
		    FUNC2("w");
		    size = WORD;
		}
		else if (size == WORD)
		    FUNC2("w");
		else
		    FUNC2("l");
	    }
	}
	FUNC2("\t");
	for (first = true;
	     i_mode != 0;
	     i_mode >>= 8, first = false)
	{
	    if (!first)
		FUNC2(",");

	    switch (i_mode & 0xFF) {

		case E:
		    FUNC1(seg, size, &address);
		    break;

		case Eind:
		    FUNC2("*");
		    FUNC1(seg, size, &address);
		    break;

		case El:
		    FUNC1(seg, LONG, &address);
		    break;

		case Ew:
		    FUNC1(seg, WORD, &address);
		    break;

		case Eb:
		    FUNC1(seg, BYTE, &address);
		    break;

		case R:
		    FUNC2("%s", db_reg[size][FUNC7(regmodrm)]);
		    break;

		case Rw:
		    FUNC2("%s", db_reg[WORD][FUNC7(regmodrm)]);
		    break;

		case Ri:
		    FUNC2("%s", db_reg[size][FUNC8(inst)]);
		    break;

		case Ril:
		    FUNC2("%s", db_reg[LONG][FUNC8(inst)]);
		    break;

		case S:
		    FUNC2("%s", db_seg_reg[FUNC7(regmodrm)]);
		    break;

		case Si:
		    FUNC2("%s", db_seg_reg[FUNC7(inst)]);
		    break;

		case A:
		    FUNC2("%s", db_reg[size][0]);	/* acc */
		    break;

		case BX:
		    if (seg)
			FUNC2("%s:", seg);
		    FUNC2("(%s)", short_addr ? "%bx" : "%ebx");
		    break;

		case CL:
		    FUNC2("%%cl");
		    break;

		case DX:
		    FUNC2("%%dx");
		    break;

		case SI:
		    if (seg)
			FUNC2("%s:", seg);
		    FUNC2("(%s)", short_addr ? "%si" : "%esi");
		    break;

		case DI:
		    FUNC2("%%es:(%s)", short_addr ? "%di" : "%edi");
		    break;

		case CR:
		    FUNC2("%%cr%d", FUNC7(regmodrm));
		    break;

		case DR:
		    FUNC2("%%dr%d", FUNC7(regmodrm));
		    break;

		case TR:
		    FUNC2("%%tr%d", FUNC7(regmodrm));
		    break;

		case I:
		    len = db_lengths[size];
		    FUNC9(imm, loc, len, FALSE);
		    FUNC2("$%#r", imm);
		    break;

		case Is:
		    len = db_lengths[size];
		    FUNC9(imm, loc, len, FALSE);
		    FUNC2("$%+#r", imm);
		    break;

		case Ib:
		    FUNC9(imm, loc, 1, FALSE);
		    FUNC2("$%#r", imm);
		    break;

		case Iba:
		    FUNC9(imm, loc, 1, FALSE);
		    if (imm != 0x0a)
			FUNC2("$%#r", imm);
		    break;

		case Ibs:
		    FUNC9(imm, loc, 1, TRUE);
		    if (size == WORD)
			imm &= 0xFFFF;
		    FUNC2("$%+#r", imm);
		    break;

		case Iw:
		    FUNC9(imm, loc, 2, FALSE);
		    FUNC2("$%#r", imm);
		    break;

		case O:
		    len = (short_addr ? 2 : 4);
		    FUNC9(displ, loc, len, FALSE);
		    if (seg)
			FUNC2("%s:%+#r",seg, displ);
		    else
			FUNC3((db_addr_t)displ, DB_STGY_ANY);
		    break;

		case Db:
		    FUNC9(displ, loc, 1, TRUE);
		    displ += loc;
		    if (size == WORD)
			displ &= 0xFFFF;
		    FUNC3((db_addr_t)displ, DB_STGY_XTRN);
		    break;

		case Dl:
		    len = db_lengths[size];
		    FUNC9(displ, loc, len, FALSE);
		    displ += loc;
		    if (size == WORD)
			displ &= 0xFFFF;
		    FUNC3((db_addr_t)displ, DB_STGY_XTRN);
		    break;

		case o1:
		    FUNC2("$1");
		    break;

		case o3:
		    FUNC2("$3");
		    break;

		case OS:
		    len = db_lengths[size];
		    FUNC9(imm, loc, len, FALSE);	/* offset */
		    FUNC9(imm2, loc, 2, FALSE);	/* segment */
		    FUNC2("$%#r,%#r", imm2, imm);
		    break;
	    }
	}
	FUNC2("\n");
	return (loc);
}