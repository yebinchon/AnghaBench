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
typedef  int /*<<< orphan*/  pir_table_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PIR_BASE ; 
 int /*<<< orphan*/  PIR_SIZE ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  _PATH_DEVMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int,char**,char*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 () ; 

int
FUNC13(int argc, char *argv[])
{
	int ch, r;
	int err = -1;
	int mem_fd = -1;
	pir_table_t *pir = NULL;
	void *map_addr = MAP_FAILED;
	char *real_pir;

	progname = FUNC1(argv[0]);
	while ((ch = FUNC7(argc, argv, "h")) != -1)
		switch (ch) {
		case 'h':
		default:
			FUNC12();
	}
	argc -= optind;
	argv += optind;

	if (argc > 0)
		FUNC12();

	FUNC0();
	/*
	 * Map the PIR region into our process' linear space.
	 */
	if ((mem_fd = FUNC10(_PATH_DEVMEM, O_RDONLY)) == -1) {
		FUNC11("open");
		goto cleanup;
	}
	map_addr = FUNC8(NULL, PIR_SIZE, PROT_READ, MAP_SHARED, mem_fd,
	    PIR_BASE);
	if (map_addr == MAP_FAILED) {
		FUNC11("mmap");
		goto cleanup;
	}
	/*
	 * Find and print the PIR table.
	 */
	if ((pir = FUNC5(map_addr)) == NULL) {
		FUNC6(stderr, "PIR table signature not found.\r\n");
	} else {
		FUNC3(pir, map_addr);
		err = 0;
	}

cleanup:
	if (map_addr != MAP_FAILED)
		FUNC9(map_addr, PIR_SIZE);
	if (mem_fd != -1)
		FUNC2(mem_fd);

	FUNC4 ((err == 0) ? EXIT_SUCCESS : EXIT_FAILURE);
}