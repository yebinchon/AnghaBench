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
struct nlist {int n_type; int /*<<< orphan*/  n_value; } ;

/* Variables and functions */
#define  AUX_FUNC 169 
#define  AUX_OBJECT 168 
 scalar_t__ BIND_WEAK ; 
#define  N_ABS 167 
 int FUNC0 (struct nlist const*) ; 
#define  N_BCOMM 166 
#define  N_BINCL 165 
 scalar_t__ FUNC1 (struct nlist const*) ; 
#define  N_BSLINE 164 
#define  N_BSS 163 
#define  N_COMM 162 
#define  N_DATA 161 
#define  N_DSLINE 160 
#define  N_ECOML 159 
#define  N_ECOMM 158 
#define  N_EINCL 157 
#define  N_ENTRY 156 
#define  N_EXCL 155 
 int N_EXT ; 
#define  N_FN 154 
#define  N_FNAME 153 
#define  N_FUN 152 
#define  N_GSYM 151 
#define  N_INDR 150 
#define  N_LBRAC 149 
#define  N_LCSYM 148 
#define  N_LENG 147 
#define  N_LSYM 146 
#define  N_MAIN 145 
#define  N_PC 144 
#define  N_PSYM 143 
#define  N_RBRAC 142 
#define  N_RSYM 141 
#define  N_SETA 140 
#define  N_SETB 139 
#define  N_SETD 138 
#define  N_SETT 137 
#define  N_SETV 136 
#define  N_SIZE 135 
#define  N_SLINE 134 
#define  N_SO 133 
#define  N_SOL 132 
#define  N_SSYM 131 
#define  N_STSYM 130 
#define  N_TEXT 129 
#define  N_UNDF 128 
 int /*<<< orphan*/  FUNC2 (char*,char,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char FUNC5 (char) ; 

__attribute__((used)) static void
FUNC6(const struct nlist *np)
{
    char type[8];
    char aux[8];
    char weak;
    char *p;

    switch (np->n_type & ~N_EXT) {
    case N_UNDF:	FUNC4(type, "undf");  break;
    case N_ABS:		FUNC4(type, "abs");  break;
    case N_TEXT:	FUNC4(type, "text");  break;
    case N_DATA:	FUNC4(type, "data");  break;
    case N_BSS:		FUNC4(type, "bss");  break;
    case N_INDR:	FUNC4(type, "indr");  break;
    case N_SIZE:	FUNC4(type, "size");  break;
    case N_COMM:	FUNC4(type, "comm");  break;
    case N_SETA:	FUNC4(type, "seta");  break;
    case N_SETT:	FUNC4(type, "sett");  break;
    case N_SETD:	FUNC4(type, "setd");  break;
    case N_SETB:	FUNC4(type, "setb");  break;
    case N_SETV:	FUNC4(type, "setv");  break;
    case N_FN:		FUNC4(type, np->n_type&N_EXT ? "fn" : "warn");  break;
    case N_GSYM:	FUNC4(type, "gsym");  break;
    case N_FNAME:	FUNC4(type, "fname");  break;
    case N_FUN:		FUNC4(type, "fun");  break;
    case N_STSYM:	FUNC4(type, "stsym");  break;
    case N_LCSYM:	FUNC4(type, "lcsym");  break;
    case N_MAIN:	FUNC4(type, "main");  break;
    case N_PC:		FUNC4(type, "pc");  break;
    case N_RSYM:	FUNC4(type, "rsym");  break;
    case N_SLINE:	FUNC4(type, "sline");  break;
    case N_DSLINE:	FUNC4(type, "dsline");  break;
    case N_BSLINE:	FUNC4(type, "bsline");  break;
    case N_SSYM:	FUNC4(type, "ssym");  break;
    case N_SO:		FUNC4(type, "so");  break;
    case N_LSYM:	FUNC4(type, "lsym");  break;
    case N_BINCL:	FUNC4(type, "bincl");  break;
    case N_SOL:		FUNC4(type, "sol");  break;
    case N_PSYM:	FUNC4(type, "psym");  break;
    case N_EINCL:	FUNC4(type, "eincl");  break;
    case N_ENTRY:	FUNC4(type, "entry");  break;
    case N_LBRAC:	FUNC4(type, "lbrac");  break;
    case N_EXCL:	FUNC4(type, "excl");  break;
    case N_RBRAC:	FUNC4(type, "rbrac");  break;
    case N_BCOMM:	FUNC4(type, "bcomm");  break;
    case N_ECOMM:	FUNC4(type, "ecomm");  break;
    case N_ECOML:	FUNC4(type, "ecoml");  break;
    case N_LENG:	FUNC4(type, "leng");  break;
    default:
	FUNC3(type, sizeof type, "%#02x", np->n_type);
	break;
    }

    if (np->n_type & N_EXT && type[0] != '0')
	for (p = type;  *p != '\0';  ++p)
	    *p = FUNC5(*p);

    switch (FUNC0(np)) {
    case 0:		FUNC4(aux, "");  break;
    case AUX_OBJECT:	FUNC4(aux, "objt");  break;
    case AUX_FUNC:	FUNC4(aux, "func");  break;
    default:		FUNC3(aux, sizeof aux, "%#01x", FUNC0(np));  break;
    }

    weak = FUNC1(np) == BIND_WEAK ? 'w' : ' ';

    FUNC2("%c%-6s %-4s %8lx", weak, type, aux, np->n_value);
}