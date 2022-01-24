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
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
struct file {int fd; int binary; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 scalar_t__ BINFILE_TEXT ; 
 scalar_t__ FILE_MMAP ; 
 scalar_t__ FILE_STDIO ; 
 int /*<<< orphan*/  MADV_SEQUENTIAL ; 
 int /*<<< orphan*/ * MAP_FAILED ; 
 int MAP_NOCORE ; 
 int MAP_NOSYNC ; 
 int MAP_PREFAULT_READ ; 
 int MAP_PRIVATE ; 
 int MAXBUFSIZ ; 
 scalar_t__ OFF_MAX ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ binbehave ; 
 int /*<<< orphan*/ * buffer ; 
 int /*<<< orphan*/ * bufpos ; 
 scalar_t__ bufrem ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ filebehave ; 
 char fileeol ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 scalar_t__ fsiz ; 
 int FUNC3 (int,struct stat*) ; 
 void* FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct file*) ; 
 int lbflag ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct file*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (char const*,int /*<<< orphan*/ ) ; 

struct file *
FUNC11(const char *path)
{
	struct file *f;

	f = FUNC4(sizeof *f);
	FUNC8(f, 0, sizeof *f);
	if (path == NULL) {
		/* Processing stdin implies --line-buffered. */
		lbflag = true;
		f->fd = STDIN_FILENO;
	} else if ((f->fd = FUNC10(path, O_RDONLY)) == -1)
		goto error1;

	if (filebehave == FILE_MMAP) {
		struct stat st;

		if ((FUNC3(f->fd, &st) == -1) || (st.st_size > OFF_MAX) ||
		    (!FUNC0(st.st_mode)))
			filebehave = FILE_STDIO;
		else {
			int flags = MAP_PRIVATE | MAP_NOCORE | MAP_NOSYNC;
#ifdef MAP_PREFAULT_READ
			flags |= MAP_PREFAULT_READ;
#endif
			fsiz = st.st_size;
			buffer = FUNC9(NULL, fsiz, PROT_READ, flags,
			     f->fd, (off_t)0);
			if (buffer == MAP_FAILED)
				filebehave = FILE_STDIO;
			else {
				bufrem = st.st_size;
				bufpos = buffer;
				FUNC6(buffer, st.st_size, MADV_SEQUENTIAL);
			}
		}
	}

	if ((buffer == NULL) || (buffer == MAP_FAILED))
		buffer = FUNC4(MAXBUFSIZ);

	/* Fill read buffer, also catches errors early */
	if (bufrem == 0 && FUNC5(f) != 0)
		goto error2;

	/* Check for binary stuff, if necessary */
	if (binbehave != BINFILE_TEXT && fileeol != '\0' &&
	    FUNC7(bufpos, '\0', bufrem) != NULL)
		f->binary = true;

	return (f);

error2:
	FUNC1(f->fd);
error1:
	FUNC2(f);
	return (NULL);
}