#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ re_nsub; } ;
typedef  TYPE_1__ regex_t ;

/* Variables and functions */
 int REG_ICASE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fname ; 
 int /*<<< orphan*/  linenum ; 
 TYPE_1__* FUNC2 (int) ; 
 scalar_t__ maxnsub ; 
 int FUNC3 (TYPE_1__*,char*,int) ; 
 int rflags ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_1__*) ; 

__attribute__((used)) static regex_t *
FUNC5(char *re, int case_insensitive)
{
	regex_t *rep;
	int eval, flags;


	flags = rflags;
	if (case_insensitive)
		flags |= REG_ICASE;
	if ((rep = FUNC2(sizeof(regex_t))) == NULL)
		FUNC0(1, "malloc");
	if ((eval = FUNC3(rep, re, flags)) != 0)
		FUNC1(1, "%lu: %s: RE error: %s",
				linenum, fname, FUNC4(eval, rep));
	if (maxnsub < rep->re_nsub)
		maxnsub = rep->re_nsub;
	return (rep);
}