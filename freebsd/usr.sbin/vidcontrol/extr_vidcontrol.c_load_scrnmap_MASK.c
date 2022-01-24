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
typedef  int /*<<< orphan*/  scrnmap ;
typedef  int /*<<< orphan*/  scrmap_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  PIO_SCRNMAP ; 
 char* SCRNMAP_PATH ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const**,char const**,char const**,char const**,char**) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(const char *filename)
{
	FILE *fd;
	int size;
	char *name;
	scrmap_t scrnmap;
	const char *a[] = {"", SCRNMAP_PATH, NULL};
	const char *b[] = {filename, NULL};
	const char *c[] = {"", ".scm", NULL};
	const char *d[] = {"", NULL};

	fd = FUNC6(a, b, c, d, &name);

	if (fd == NULL) {
		FUNC7();
		FUNC2(1, "screenmap file not found");
	}

	size = sizeof(scrnmap);

	if (FUNC0(fd, (char *)&scrnmap, size) != size) {
		FUNC8(fd);

		if (FUNC4(&scrnmap, 1, size, fd) != (size_t)size) {
			FUNC3(fd);
			FUNC7();
			FUNC2(1, "bad screenmap file");
		}
	}

	if (FUNC5(0, PIO_SCRNMAP, &scrnmap) == -1) {
		FUNC7();
		FUNC1(1, "loading screenmap");
	}

	FUNC3(fd);
}