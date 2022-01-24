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
struct aggent {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LNBUFF ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct aggent*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(FILE *fp, struct aggent *agg)
{
	char buffer[LNBUFF];

	while (FUNC0(buffer, LNBUFF, fp) != NULL) {
		FUNC1(fp, FUNC4(buffer) * -1, SEEK_CUR);
		if (FUNC2(buffer) != 0)
			break;
		if (FUNC3(fp, agg) == -1)
			return (-1);
	}
	return (0);
}