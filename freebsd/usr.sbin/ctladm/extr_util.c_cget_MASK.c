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
struct get_hook {size_t got; size_t argc; char** argv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 

char *
FUNC4(void *hook, char *name)
{
	struct get_hook *h = (struct get_hook *)hook;
	char *arg;

	if (h->got >= h->argc)
	{
		FUNC1(stderr, "Expecting a character pointer argument.\n");
		FUNC3(0);
		FUNC0(1);
	}
	arg = h->argv[h->got];
	h->got++;

	if (verbose && name)
		FUNC2("cget: %s: %s", name, arg);

	return arg;
}