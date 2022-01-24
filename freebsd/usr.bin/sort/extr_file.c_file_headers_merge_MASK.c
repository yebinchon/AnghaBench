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
struct last_printed {scalar_t__ str; } ;
struct file_header {scalar_t__ fr; } ;
typedef  int /*<<< orphan*/  lp ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct file_header*,struct file_header**,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct file_header**,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct file_header*,int /*<<< orphan*/ *,struct last_printed*) ; 
 int /*<<< orphan*/  FUNC4 (struct file_header*) ; 
 int /*<<< orphan*/  FUNC5 (struct last_printed*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(size_t fnum, struct file_header **fh, FILE *f_out)
{
	struct last_printed lp;
	size_t i;

	FUNC5(&lp, 0, sizeof(lp));

	/*
	 * construct the initial sort structure
	 */
	for (i = 0; i < fnum; i++)
		FUNC1(fh[i], fh, i);

	while (fh[0]->fr) { /* unfinished files are always in front */
		/* output the smallest line: */
		FUNC3(fh[0], f_out, &lp);
		/* read a new line, if possible: */
		FUNC4(fh[0]);
		/* re-arrange the list: */
		FUNC2(fh, fnum);
	}

	if (lp.str)
		FUNC0(lp.str);
}