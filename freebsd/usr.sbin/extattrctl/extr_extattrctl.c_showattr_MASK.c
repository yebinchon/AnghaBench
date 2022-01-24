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
typedef  int /*<<< orphan*/  uef ;
struct ufs_extattr_fileheader {scalar_t__ uef_magic; int uef_version; int uef_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ UFS_EXTATTR_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int) ; 
 int FUNC5 (int,struct ufs_extattr_fileheader*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7(int argc, char *argv[])
{
	struct ufs_extattr_fileheader	uef;
	int i, fd;

	if (argc != 1)
		FUNC6();

	fd = FUNC2(argv[0], O_RDONLY);
	if (fd == -1) {
		FUNC3(argv[0]);
		return (-1);
	}

	i = FUNC5(fd, &uef, sizeof(uef));
	if (i == -1) {
		FUNC3(argv[0]);
		FUNC0(fd);
		return (-1);
	}
	if (i != sizeof(uef)) {
		FUNC1(stderr, "%s: invalid file header\n", argv[0]);
		FUNC0(fd);
		return (-1);
	}

	if (uef.uef_magic != UFS_EXTATTR_MAGIC) {
		FUNC1(stderr, "%s: bad magic\n", argv[0]);
		FUNC0(fd);
		return (-1);
	}

	FUNC4("%s: version %d, size %d\n", argv[0], uef.uef_version,
	    uef.uef_size);

	FUNC0(fd);
	return (0);
}