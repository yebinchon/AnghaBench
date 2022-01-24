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

/* Variables and functions */
#define  ALK 157 
#define  ASH 156 
#define  BTAB 155 
#define  CLK 154 
#define  DBG 153 
 int F_ACC ; 
 int F_FN ; 
 int F_SCR ; 
#define  HALT 152 
#define  LALT 151 
#define  LALTA 150 
#define  LCTR 149 
#define  LCTRA 148 
#define  LSH 147 
#define  LSHA 146 
 int L_ACC ; 
 int L_FN ; 
 int L_SCR ; 
#define  META 145 
#define  NEXT 144 
#define  NLK 143 
#define  NOP 142 
#define  PASTE 141 
#define  PDWN 140 
#define  PNC 139 
#define  PREV 138 
#define  RALT 137 
#define  RALTA 136 
#define  RBT 135 
#define  RCTR 134 
#define  RCTRA 133 
#define  RSH 132 
#define  RSHA 131 
#define  SLK 130 
 int SPECIAL ; 
#define  SPSC 129 
#define  SUSP 128 
 char** acc_names_u ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(int value)
{
	if (value & SPECIAL) {
		value &= ~SPECIAL;
		switch (value) {
		case NOP:
			FUNC2("  NOP, ");
			break;
		case LSH:
			FUNC2("  LSH, ");
			break;
		case RSH:
			FUNC2("  RSH, ");
			break;
		case CLK:
			FUNC2("  CLK, ");
			break;
		case NLK:
			FUNC2("  NLK, ");
			break;
		case SLK:
			FUNC2("  SLK, ");
			break;
		case BTAB:
			FUNC2(" BTAB, ");
			break;
		case LALT:
			FUNC2(" LALT, ");
			break;
		case LCTR:
			FUNC2(" LCTR, ");
			break;
		case NEXT:
			FUNC2(" NEXT, ");
			break;
		case PREV:
			FUNC2(" PREV, ");
			break;
		case RCTR:
			FUNC2(" RCTR, ");
			break;
		case RALT:
			FUNC2(" RALT, ");
			break;
		case ALK:
			FUNC2("  ALK, ");
			break;
		case ASH:
			FUNC2("  ASH, ");
			break;
		case META:
			FUNC2(" META, ");
			break;
		case RBT:
			FUNC2("  RBT, ");
			break;
		case DBG:
			FUNC2("  DBG, ");
			break;
		case SUSP:
			FUNC2(" SUSP, ");
			break;
		case SPSC:
			FUNC2(" SPSC, ");
			break;
		case PNC:
			FUNC2("  PNC, ");
			break;
		case LSHA:
			FUNC2(" LSHA, ");
			break;
		case RSHA:
			FUNC2(" RSHA, ");
			break;
		case LCTRA:
			FUNC2("LCTRA, ");
			break;
		case RCTRA:
			FUNC2("RCTRA, ");
			break;
		case LALTA:
			FUNC2("LALTA, ");
			break;
		case RALTA:
			FUNC2("RALTA, ");
			break;
		case HALT:
			FUNC2(" HALT, ");
			break;
		case PDWN:
			FUNC2(" PDWN, ");
			break;
		case PASTE:
			FUNC2("PASTE, ");
			break;
		default:
	 		if (value >= F_FN && value <= L_FN)
				FUNC2(" F(%2d),", value - F_FN + 1);
	 		else if (value >= F_SCR && value <= L_SCR)
				FUNC2(" S(%2d),", value - F_SCR + 1);
	 		else if (value >= F_ACC && value <= L_ACC)
				FUNC2(" %-4s, ", acc_names_u[value - F_ACC]);
			else
				FUNC2(" 0x%02X, ", value);
			break;
		}
	} else if (value == '\'') {
		FUNC2(" '\\'', ");
	} else if (value == '\\') {
		FUNC2(" '\\\\', ");
	} else if (FUNC0(value) && FUNC1(value)) {
		FUNC2("  '%c', ", value);
	} else {
		FUNC2(" 0x%02X, ", value);
	}
}