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
struct stat {int st_size; } ;

/* Variables and functions */
 int bytecnt ; 
 int chunks ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  ifd ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct stat sb;

	if (FUNC2(ifd, &sb) == -1) {
		FUNC0(1, "stat");
		/* NOTREACHED */
	}

	if (chunks > sb.st_size) {
		FUNC1(1, "can't split into more than %d files",
		    (int)sb.st_size);
		/* NOTREACHED */
	}

	bytecnt = sb.st_size / chunks;
	FUNC3();
}