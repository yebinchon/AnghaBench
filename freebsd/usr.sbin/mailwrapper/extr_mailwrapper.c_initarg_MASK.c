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
struct arglist {int maxc; int /*<<< orphan*/ * argv; scalar_t__ argc; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_TEMPFAIL ; 
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2(struct arglist *al)
{
	al->argc = 0;
	al->maxc = 10;
	if ((al->argv = FUNC0(al->maxc, sizeof(char *))) == NULL)
		FUNC1(EX_TEMPFAIL, "calloc");
}