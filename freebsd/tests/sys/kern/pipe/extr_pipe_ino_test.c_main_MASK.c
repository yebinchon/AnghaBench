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
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC3 (int,struct stat*) ; 
 int FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int
FUNC6(void)
{
	int pipefd[2];
	struct stat st1, st2;

	if (FUNC4(pipefd) == -1)
		FUNC1(1, "FAIL: pipe");

	if (FUNC3(pipefd[0], &st1) == -1)
		FUNC1(1, "FAIL: fstat st1");
	if (FUNC3(pipefd[1], &st2) == -1)
		FUNC1(1, "FAIL: fstat st2");
	if (st1.st_dev != st2.st_dev || st1.st_dev == 0 || st2.st_dev == 0)
		FUNC2(1, "FAIL: wrong dev number %ju %ju",
		    (uintmax_t)st1.st_dev, (uintmax_t)st2.st_dev);
	if (st1.st_ino == st2.st_ino)
		FUNC2(1, "FAIL: inode numbers are equal: %ju",
		    (uintmax_t)st1.st_ino);

	FUNC0(pipefd[0]);
	FUNC0(pipefd[1]);
	FUNC5("PASS\n");

	return (0);
}