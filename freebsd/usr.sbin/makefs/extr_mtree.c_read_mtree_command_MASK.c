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
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtree_global ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC4(FILE *fp)
{
	char cmd[10];
	int error;

	error = FUNC2(fp, cmd, sizeof(cmd));
	if (error)
		goto out;

	error = FUNC1(fp, &mtree_global);

 out:
	FUNC3(fp, "\n");
	(void)FUNC0(fp);
	return (error);
}