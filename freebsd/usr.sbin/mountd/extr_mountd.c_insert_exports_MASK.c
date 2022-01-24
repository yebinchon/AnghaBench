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
typedef  size_t uint32_t ;
struct exportlisthead {int dummy; } ;
struct exportlist {int /*<<< orphan*/  ex_fsdir; int /*<<< orphan*/  ex_fs; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct exportlisthead*,struct exportlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 

__attribute__((used)) static void
FUNC3(struct exportlist *ep, struct exportlisthead *exhp)
{
	uint32_t i;

	i = FUNC0(&ep->ex_fs);
	FUNC1("fs=%s hash=%i", ep->ex_fsdir, i);
	FUNC2(&exhp[i], ep, entries);
}