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
struct fifolog_file {int fd; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIFOLOG_FILE_MAGIC ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (struct fifolog_file**) ; 
 char* FUNC1 (struct fifolog_file*,char const*,int) ; 
 struct fifolog_file* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct fifolog_file*,struct fifolog_file*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fifolog_file*,int /*<<< orphan*/ ,int) ; 

const char *
FUNC5(struct fifolog_file **ff, const char *fname, int mode)
{
	struct fifolog_file fs, *f;
	const char *retval;
	int e;

	f = &fs;
	FUNC4(f, 0, sizeof *f);
	f->fd = -1;
	retval = FUNC1(f, fname, mode);
	e = errno;
	if (retval == NULL) {
		*ff = FUNC2(sizeof *f);
		if (*ff != NULL) {
			FUNC3(*ff, f, sizeof *f);
			(*ff)->magic = FIFOLOG_FILE_MAGIC;
			return (retval);
		}
	}
	FUNC0(&f);
	errno = e;
	return (retval);
}