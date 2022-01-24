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
struct acctv3 {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct acctv3*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct acctv3*) ; 
 int FUNC4 (int,int /*<<< orphan*/ *) ; 

int
FUNC5(FILE *f, struct acctv3 *av3)
{
	int magic, rv;

	if ((magic = FUNC1(f)) == EOF)
		return (FUNC0(f) ? EOF : 0);
	if (FUNC4(magic, f) == EOF)
		return (EOF);
	if (magic != 0)
		/* Old record format. */
		rv = FUNC2(f, av3);
	else
		/* New record formats. */
		rv = FUNC3(f, av3);
	return (rv == EOF ? EOF : 1);
}