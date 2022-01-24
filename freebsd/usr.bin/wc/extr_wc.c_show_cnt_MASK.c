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
typedef  int /*<<< orphan*/  xo_handle_t ;
typedef  int /*<<< orphan*/  uintmax_t ;

/* Variables and functions */
 scalar_t__ dochar ; 
 scalar_t__ doline ; 
 scalar_t__ dolongline ; 
 scalar_t__ domulti ; 
 scalar_t__ doword ; 
 scalar_t__ siginfo ; 
 int /*<<< orphan*/ * stderr_handle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC1(const char *file, uintmax_t linect, uintmax_t wordct,
    uintmax_t charct, uintmax_t llct)
{
	xo_handle_t *xop;

	if (!siginfo)
		xop = NULL;
	else {
		xop = stderr_handle;
		siginfo = 0;
	}

	if (doline)
		FUNC0(xop, " {:lines/%7ju/%ju}", linect);
	if (doword)
		FUNC0(xop, " {:words/%7ju/%ju}", wordct);
	if (dochar || domulti)
		FUNC0(xop, " {:characters/%7ju/%ju}", charct);
	if (dolongline)
		FUNC0(xop, " {:long-lines/%7ju/%ju}", llct);
	if (file != NULL)
		FUNC0(xop, " {:filename/%s}\n", file);
	else
		FUNC0(xop, "\n");
}