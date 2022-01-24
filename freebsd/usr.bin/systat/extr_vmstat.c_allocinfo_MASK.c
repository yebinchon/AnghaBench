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
struct Info {long* intrcnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  nintr ; 

__attribute__((used)) static void
FUNC2(struct Info *ls)
{

	ls->intrcnt = (long *) FUNC0(nintr, sizeof(long));
	if (ls->intrcnt == NULL)
		FUNC1(2, "out of memory");
}