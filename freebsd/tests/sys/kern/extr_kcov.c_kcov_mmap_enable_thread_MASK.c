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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int KCOV_ENTRY_SIZE ; 
 int KCOV_MODE_TRACE_PC ; 
 int /*<<< orphan*/  KIOENABLE ; 
 int /*<<< orphan*/  KIOSETBUFSIZE ; 
 scalar_t__ MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int PAGE_SIZE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  sem1 ; 
 int /*<<< orphan*/  sem2 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC7(void *data)
{
	int fd;

	fd = FUNC4();
	*(int *)data = fd;

	FUNC1(FUNC2(fd, KIOSETBUFSIZE, PAGE_SIZE / KCOV_ENTRY_SIZE) == 0);
	FUNC0(FUNC3(NULL, PAGE_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED,
	    fd, 0) != MAP_FAILED);
	FUNC0(FUNC2(fd, KIOENABLE, KCOV_MODE_TRACE_PC) == 0);

	FUNC5(&sem1);
	FUNC6(&sem2);

	return (NULL);
}