#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_2__ {int /*<<< orphan*/  rootfd; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char*,size_t) ; 

__attribute__((used)) static void
FUNC9(char const * name)
{
	char tmp[1014];
	FILE *fp;
	int fd;
	size_t len;
	off_t	atofs = 0;
	
	if ((fd = FUNC6(conf.rootfd, "etc/opiekeys", O_RDWR)) == -1)
		return;

	fp = FUNC1(fd, "r+");
	len = FUNC7(name);

	while (FUNC2(tmp, sizeof(tmp), fp) != NULL) {
		if (FUNC8(name, tmp, len) == 0 && tmp[len]==' ') {
			/* Comment username out */
			if (FUNC3(fp, atofs, SEEK_SET) == 0)
				FUNC5("#", 1, 1, fp);
			break;
		}
		atofs = FUNC4(fp);
	}
	/*
	 * If we got an error of any sort, don't update!
	 */
	FUNC0(fp);
}