#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char* u_quad_t ;
typedef  char* u_int64_t ;
typedef  char* u_int32_t ;
typedef  char* u_int16_t ;
typedef  char u_char ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u4 ;
typedef  int /*<<< orphan*/  u2 ;
typedef  int /*<<< orphan*/  s8 ;
typedef  int /*<<< orphan*/  s4 ;
typedef  int /*<<< orphan*/  s2 ;
typedef  char* quad_t ;
typedef  int /*<<< orphan*/  ldbl ;
typedef  char* int8_t ;
typedef  char* int32_t ;
typedef  char* int16_t ;
typedef  int /*<<< orphan*/  f8 ;
typedef  int /*<<< orphan*/  f4 ;
struct TYPE_5__ {int flags; char* fmt; int bcnt; } ;
typedef  TYPE_1__ PR ;

/* Variables and functions */
#define  F_ADDRESS 138 
#define  F_BPAD 137 
#define  F_C 136 
#define  F_CHAR 135 
#define  F_DBL 134 
#define  F_INT 133 
#define  F_P 132 
#define  F_STR 131 
#define  F_TEXT 130 
#define  F_U 129 
#define  F_UINT 128 
 int address ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int blocksize ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int eaddress ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void
FUNC5(PR *pr, u_char *bp)
{
	long double ldbl;
	   double f8;
	    float f4;
	  int16_t s2;
	   int8_t s8;
	  int32_t s4;
	u_int16_t u2;
	u_int32_t u4;
	u_int64_t u8;

	switch(pr->flags) {
	case F_ADDRESS:
		(void)FUNC4(pr->fmt, (quad_t)address);
		break;
	case F_BPAD:
		(void)FUNC4(pr->fmt, "");
		break;
	case F_C:
		FUNC1(pr, bp, eaddress ? eaddress - address :
		    blocksize - address % blocksize);
		break;
	case F_CHAR:
		(void)FUNC4(pr->fmt, *bp);
		break;
	case F_DBL:
		switch(pr->bcnt) {
		case 4:
			FUNC0(bp, &f4, sizeof(f4));
			(void)FUNC4(pr->fmt, f4);
			break;
		case 8:
			FUNC0(bp, &f8, sizeof(f8));
			(void)FUNC4(pr->fmt, f8);
			break;
		default:
			if (pr->bcnt == sizeof(long double)) {
				FUNC0(bp, &ldbl, sizeof(ldbl));
				(void)FUNC4(pr->fmt, ldbl);
			}
			break;
		}
		break;
	case F_INT:
		switch(pr->bcnt) {
		case 1:
			(void)FUNC4(pr->fmt, (quad_t)(signed char)*bp);
			break;
		case 2:
			FUNC0(bp, &s2, sizeof(s2));
			(void)FUNC4(pr->fmt, (quad_t)s2);
			break;
		case 4:
			FUNC0(bp, &s4, sizeof(s4));
			(void)FUNC4(pr->fmt, (quad_t)s4);
			break;
		case 8:
			FUNC0(bp, &s8, sizeof(s8));
			(void)FUNC4(pr->fmt, s8);
			break;
		}
		break;
	case F_P:
		(void)FUNC4(pr->fmt, FUNC3(*bp) ? *bp : '.');
		break;
	case F_STR:
		(void)FUNC4(pr->fmt, (char *)bp);
		break;
	case F_TEXT:
		(void)FUNC4("%s", pr->fmt);
		break;
	case F_U:
		FUNC2(pr, bp);
		break;
	case F_UINT:
		switch(pr->bcnt) {
		case 1:
			(void)FUNC4(pr->fmt, (u_quad_t)*bp);
			break;
		case 2:
			FUNC0(bp, &u2, sizeof(u2));
			(void)FUNC4(pr->fmt, (u_quad_t)u2);
			break;
		case 4:
			FUNC0(bp, &u4, sizeof(u4));
			(void)FUNC4(pr->fmt, (u_quad_t)u4);
			break;
		case 8:
			FUNC0(bp, &u8, sizeof(u8));
			(void)FUNC4(pr->fmt, u8);
			break;
		}
		break;
	}
}