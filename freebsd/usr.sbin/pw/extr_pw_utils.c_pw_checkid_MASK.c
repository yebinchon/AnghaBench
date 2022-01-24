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
typedef  int /*<<< orphan*/  uintmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 

uintmax_t
FUNC2(char *nptr, uintmax_t maxval)
{
	const char *errstr = NULL;
	uintmax_t id;

	id = FUNC1(nptr, 0, maxval, &errstr);
	if (errstr)
		FUNC0(EX_USAGE, "Bad id '%s': %s", nptr, errstr);
	return (id);
}