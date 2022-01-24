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
typedef  int /*<<< orphan*/  version ;
typedef  int uint8_t ;
struct acctv3 {int dummy; } ;
typedef  int /*<<< orphan*/  magic ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EFTYPE ; 
 scalar_t__ EOF ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct acctv3*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct acctv3*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(FILE *f, struct acctv3 *av3)
{
	uint8_t magic, version;

	if (FUNC0(&magic, sizeof(magic), f) == EOF ||
	    FUNC0(&version, sizeof(version), f) == EOF ||
	    FUNC3(version, f) == EOF ||
	    FUNC3(magic, f) == EOF)
		return (EOF);
	switch (version) {
	case 2:
		return (FUNC1(f, av3));
	case 3:
		return (FUNC2(f, av3));

	/* Add handling for more versions here. */

	default:
		errno = EFTYPE;
		return (EOF);
	}
}