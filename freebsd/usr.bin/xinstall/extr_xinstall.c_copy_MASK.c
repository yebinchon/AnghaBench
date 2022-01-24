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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  DIGEST_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int MAXBSIZE ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  SEEK_SET ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 int FUNC9 (int,char*,int) ; 
 scalar_t__ safecopy ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int FUNC12 (int,char*,int) ; 

__attribute__((used)) static char *
FUNC13(int from_fd, const char *from_name, int to_fd, const char *to_name,
    off_t size)
{
	int nr, nw;
	int serrno;
	char *p;
	char buf[MAXBSIZE];
	int done_copy;
	DIGEST_CTX ctx;

	/* Rewind file descriptors. */
	if (FUNC6(from_fd, (off_t)0, SEEK_SET) == (off_t)-1)
		FUNC3(EX_OSERR, "lseek: %s", from_name);
	if (FUNC6(to_fd, (off_t)0, SEEK_SET) == (off_t)-1)
		FUNC3(EX_OSERR, "lseek: %s", to_name);

	FUNC1(&ctx);

	/*
	 * Mmap and write if less than 8M (the limit is so we don't totally
	 * trash memory on big files.  This is really a minor hack, but it
	 * wins some CPU back.
	 */
	done_copy = 0;
	if (size <= 8 * 1048576 && FUNC10(from_fd) &&
	    (p = FUNC7(NULL, (size_t)size, PROT_READ, MAP_SHARED,
		    from_fd, (off_t)0)) != MAP_FAILED) {
		nw = FUNC12(to_fd, p, size);
		if (nw != size) {
			serrno = errno;
			(void)FUNC11(to_name);
			if (nw >= 0) {
				FUNC4(EX_OSERR,
     "short write to %s: %jd bytes written, %jd bytes asked to write",
				    to_name, (uintmax_t)nw, (uintmax_t)size);
			} else {
				errno = serrno;
				FUNC3(EX_OSERR, "%s", to_name);
			}
		}
		FUNC2(&ctx, p, size);
		(void)FUNC8(p, size);
		done_copy = 1;
	}
	if (!done_copy) {
		while ((nr = FUNC9(from_fd, buf, sizeof(buf))) > 0) {
			if ((nw = FUNC12(to_fd, buf, nr)) != nr) {
				serrno = errno;
				(void)FUNC11(to_name);
				if (nw >= 0) {
					FUNC4(EX_OSERR,
     "short write to %s: %jd bytes written, %jd bytes asked to write",
					    to_name, (uintmax_t)nw,
					    (uintmax_t)size);
				} else {
					errno = serrno;
					FUNC3(EX_OSERR, "%s", to_name);
				}
			}
			FUNC2(&ctx, buf, nr);
		}
		if (nr != 0) {
			serrno = errno;
			(void)FUNC11(to_name);
			errno = serrno;
			FUNC3(EX_OSERR, "%s", from_name);
		}
	}
	if (safecopy && FUNC5(to_fd) == -1) {
		serrno = errno;
		(void)FUNC11(to_name);
		errno = serrno;
		FUNC3(EX_OSERR, "fsync failed for %s", to_name);
	}
	return (FUNC0(&ctx, NULL));
}