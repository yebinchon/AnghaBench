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
struct fs {int dummy; } ;

/* Variables and functions */
#define  ENOENT 128 
 int /*<<< orphan*/  STDSB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct fs*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int FUNC8 (int,struct fs**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,struct fs*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

void
FUNC11(char *name, char *mp)
{
	int fd;
	struct fs *fs;

	FUNC2(-1, NULL, 0);		/* flush cache */
	FUNC4();
	FUNC3();
	if ((fd = FUNC5(name,0)) < 0) {
		FUNC10("%s", name);
		FUNC0(fd);
		return;
	}
	switch (FUNC8(fd, &fs, STDSB)) {
	case 0:
		break;
	case ENOENT:
		FUNC10("Cannot find file system superblock");
		FUNC0(fd);
		return;
	default:
		FUNC10("Unable to read file system superblock");
		FUNC0(fd);
		return;
	}
	FUNC6("%s:",name);
	if (mp)
		FUNC6(" (%s)",mp);
	FUNC7('\n');
	FUNC1)(fd, fs, name);
	FUNC0(fd);
}