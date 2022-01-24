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
struct xs_transaction {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_XENSTORE ; 
 int /*<<< orphan*/  FUNC0 (char const**,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xs_transaction,char const*,char const*,int*,char const***) ; 

int
FUNC2(struct xs_transaction t, const char *dir, const char *node)
{
	const char **d;
	int error, dir_n;

	error = FUNC1(t, dir, node, &dir_n, &d);
	if (error)
		return (0);
	FUNC0(d, M_XENSTORE);
	return (1);
}