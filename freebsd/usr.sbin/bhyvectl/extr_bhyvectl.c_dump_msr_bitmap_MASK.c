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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 char const* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(int vcpu, uint64_t addr, bool cpu_intel)
{
	int error, fd, map_size;
	const char *bitmap;

	error = -1;
	bitmap = MAP_FAILED;

	fd = FUNC5("/dev/mem", O_RDONLY, 0);
	if (fd < 0) {
		FUNC6("Couldn't open /dev/mem");
		goto done;
	}

	if (cpu_intel)
		map_size = PAGE_SIZE;
	else
		map_size = 2 * PAGE_SIZE;

	bitmap = FUNC3(NULL, map_size, PROT_READ, MAP_SHARED, fd, addr);
	if (bitmap == MAP_FAILED) {
		FUNC6("mmap failed");
		goto done;
	}
	
	if (cpu_intel)
		FUNC2(bitmap, vcpu);
	else	
		FUNC1(bitmap, vcpu);

	error = 0;
done:
	if (bitmap != MAP_FAILED)
		FUNC4((void *)bitmap, map_size);
	if (fd >= 0)
		FUNC0(fd);

	return (error);
}