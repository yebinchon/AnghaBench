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
struct userconf {int dummy; } ;
typedef  int gid_t ;

/* Variables and functions */
 int EXIT_SUCCESS ; 
 int FUNC0 (struct userconf*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

int
FUNC2(struct userconf *cnf, bool quiet)
{
	gid_t next = FUNC0(cnf, -1);

	if (quiet)
		return (next);
	FUNC1("%ju\n", (uintmax_t)next);

	return (EXIT_SUCCESS);
}