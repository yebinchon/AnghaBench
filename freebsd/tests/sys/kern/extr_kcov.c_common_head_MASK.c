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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int KCOV_ENTRY_SIZE ; 
 int /*<<< orphan*/  KIOSETBUFSIZE ; 
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int PAGE_SIZE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 

__attribute__((used)) static void *
FUNC4(int *fdp)
{
	void *data;
	int fd;

	fd = FUNC3();

	FUNC0(FUNC1(fd, KIOSETBUFSIZE,
	    PAGE_SIZE / KCOV_ENTRY_SIZE) == 0,
	    "Unable to set the kcov buffer size");

	data = FUNC2(NULL, PAGE_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
	FUNC0(data != MAP_FAILED, "Unable to mmap the kcov buffer");

	*fdp = fd;
	return (data);
}