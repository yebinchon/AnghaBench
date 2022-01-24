#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dirent {scalar_t__ d_namlen; int /*<<< orphan*/  d_name; } ;
struct TYPE_5__ {int fd; char* path; scalar_t__ num_children; int /*<<< orphan*/  child; } ;
typedef  TYPE_1__ FILEDESC ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  NO_PROB ; 
 int TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,TYPE_1__**,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 struct dirent* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC9(FILEDESC *fp)
{
	DIR		*dir;
	struct dirent	*dirent;
	FILEDESC	*tailp;
	char		*name;

	(void) FUNC2(fp->fd);
	fp->fd = -1;
	if ((dir = FUNC6(fp->path)) == NULL) {
		FUNC7(fp->path);
		return (FALSE);
	}
	tailp = NULL;
	FUNC0(1, (stderr, "adding dir \"%s\"\n", fp->path));
	fp->num_children = 0;
	while ((dirent = FUNC8(dir)) != NULL) {
		if (dirent->d_namlen == 0)
			continue;
		name = FUNC3(dirent->d_name, dirent->d_namlen);
		if (FUNC1(NO_PROB, name, fp->path, &fp->child, &tailp, fp))
			fp->num_children++;
		else
			FUNC5(name);
	}
	if (fp->num_children == 0) {
		(void) FUNC4(stderr,
		    "fortune: %s: No fortune files in directory.\n", fp->path);
		return (FALSE);
	}

	return (TRUE);
}