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
struct strbuf {unsigned long len; char* buf; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct apply_state {TYPE_1__* repo; } ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*,char const*,unsigned long,struct strbuf*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ has_symlinks ; 
 int /*<<< orphan*/  FUNC7 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int) ; 
 int FUNC9 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char const*) ; 
 scalar_t__ FUNC12 (int,char const*,unsigned long) ; 

__attribute__((used)) static int FUNC13(struct apply_state *state, const char *path,
			   unsigned int mode, const char *buf,
			   unsigned long size)
{
	int fd, res;
	struct strbuf nbuf = STRBUF_INIT;

	if (FUNC1(mode)) {
		struct stat st;
		if (!FUNC7(path, &st) && FUNC0(st.st_mode))
			return 0;
		return !!FUNC8(path, 0777);
	}

	if (has_symlinks && FUNC2(mode))
		/* Although buf:size is counted string, it also is NUL
		 * terminated.
		 */
		return !!FUNC11(buf, path);

	fd = FUNC9(path, O_CREAT | O_EXCL | O_WRONLY, (mode & 0100) ? 0777 : 0666);
	if (fd < 0)
		return 1;

	if (FUNC5(state->repo->index, path, buf, size, &nbuf)) {
		size = nbuf.len;
		buf  = nbuf.buf;
	}

	res = FUNC12(fd, buf, size) < 0;
	if (res)
		FUNC6(FUNC3("failed to write to '%s'"), path);
	FUNC10(&nbuf);

	if (FUNC4(fd) < 0 && !res)
		return FUNC6(FUNC3("closing file '%s'"), path);

	return res ? -1 : 0;
}