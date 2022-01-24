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
typedef  int /*<<< orphan*/  lin ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 

__attribute__((used)) static int
FUNC4(const char *fn)
{
	char lin[80];
	register FILE *fp;

	if ((fp = FUNC3(fn, "r")) == NULL)
		return (0);
	if (FUNC2(lin, sizeof(lin), fp) == NULL) {
		FUNC1(fp);
		return (0);
	}
	FUNC1(fp);
	return (FUNC0(lin));
}