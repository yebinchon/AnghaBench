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
 void* MAP_FAILED ; 
 int MAP_NOCORE ; 
 int MAP_SHARED ; 
 int O_CREAT ; 
 int O_NOFOLLOW ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  PROT_READ ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  _PATH_DEVMEM ; 
 scalar_t__ base_addr ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,void*,int) ; 

__attribute__((used)) static int
FUNC6(char *filename, int romsize)
{
	int	 fd, mem_fd, err;
	void	*map_addr;

	fd = err = mem_fd = -1;
	map_addr = MAP_FAILED;

	if ((mem_fd = FUNC3(_PATH_DEVMEM, O_RDONLY)) == -1) {
		FUNC4("open");
		return -1;
	}

	map_addr = FUNC1(NULL, romsize, PROT_READ, MAP_SHARED|MAP_NOCORE,
	    mem_fd, base_addr);

	/* Dump ROM aperture to a file. */
	if ((fd = FUNC3(filename, O_CREAT|O_RDWR|O_TRUNC|O_NOFOLLOW,
	    S_IRUSR|S_IWUSR)) == -1) {
		FUNC4("open");
		goto cleanup;
	}

	if (FUNC5(fd, map_addr, romsize) != romsize)
		FUNC4("write");

	err = 0;
cleanup:
	if (fd != -1)
		FUNC0(fd);

	if (map_addr != MAP_FAILED)
		FUNC2((void *)base_addr, romsize);

	if (mem_fd != -1)
		FUNC0(mem_fd);

	return err;
}