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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ cflag ; 
 scalar_t__ dflag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 scalar_t__ repeats ; 
 scalar_t__ uflag ; 

__attribute__((used)) static void
FUNC1(FILE *ofp, const char *str)
{

	if ((dflag && repeats == 0) || (uflag && repeats > 0))
		return;
	if (cflag)
		(void)FUNC0(ofp, "%4d %s", repeats + 1, str);
	else
		(void)FUNC0(ofp, "%s", str);
}