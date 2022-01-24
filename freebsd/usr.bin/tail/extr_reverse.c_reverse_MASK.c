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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ off_t ;
typedef  enum STYLE { ____Placeholder_STYLE } STYLE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  FBYTES 132 
#define  FLINES 131 
#define  RBYTES 130 
#define  REVERSE 129 
#define  RLINES 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int,scalar_t__,struct stat*) ; 

void
FUNC5(FILE *fp, const char *fn, enum STYLE style, off_t off, struct stat *sbp)
{
	if (style != REVERSE && off == 0)
		return;

	if (FUNC0(sbp->st_mode))
		FUNC4(fp, fn, style, off, sbp);
	else
		switch(style) {
		case FBYTES:
		case RBYTES:
			FUNC1(fp, fn, off);
			break;
		case FLINES:
		case RLINES:
			FUNC2(fp, fn, off);
			break;
		case REVERSE:
			FUNC3(fp, fn);
			break;
		default:
			break;
		}
}