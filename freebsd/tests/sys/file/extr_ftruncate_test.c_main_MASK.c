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
struct stat {int st_size; } ;
typedef  int ssize_t ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int /*<<< orphan*/  ch ;

/* Variables and functions */
 int EINVAL ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int FUNC5 () ; 
 int* lengths ; 
 int lengths_count ; 
 int FUNC6 (char*,int,...) ; 
 scalar_t__ FUNC7 (int*) ; 
 int FUNC8 (int,char*,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int
FUNC11(void)
{
	int error, fd, fds[2], i, read_only_fd;
	char path[] = "ftruncate_file";
	struct stat sb;
	ssize_t size;
	off_t len;
	char ch;

	/*
	 * Tests using a writable file: grow and then shrink a file
	 * using ftruncate and various lengths.  Make sure that a negative
	 * file length is rejected.  Make sure that when we grow the file,
	 * bytes now in the range of the file size return 0.
	 *
	 * Save a read-only reference to the file to use later for read-only
	 * descriptor tests.
	 */
	fd = FUNC6(path, O_RDWR|O_CREAT, 0600);
	if (fd < 0)
		FUNC1(1, "open(%s, O_RDWR|O_CREAT, 0600)", path);
	read_only_fd = FUNC6(path, O_RDONLY);
	if (read_only_fd < 0) {
		error = errno;
		(void)FUNC10(path);
		errno = error;
		FUNC1(1, "open(%s, O_RDONLY)", path);
	}
	(void)FUNC10(path);

	if (FUNC4(fd, -1) == 0)
		FUNC2(1, "ftruncate(fd, -1) succeeded unexpectedly");
	if (errno != EINVAL)
		FUNC1(1, "ftruncate(fd, -1) returned wrong error");

	for (i = 0; i < lengths_count; i++) {
		len = lengths[i];
		if (FUNC4(fd, len) < 0)
			FUNC1(1, "ftruncate(%jd) up", (intmax_t)len);
		if (FUNC3(fd, &sb) < 0)
			FUNC1(1, "stat");
		if (sb.st_size != len)
			FUNC2(-1, "fstat with len=%jd returned len %jd up",
			    (intmax_t)len, (intmax_t)sb.st_size);
		if (len != 0) {
			size = FUNC8(fd, &ch, sizeof(ch), len - 1);
			if (size < 0)
				FUNC1(1, "pread on len %jd up", (intmax_t)len);
			if (size != sizeof(ch))
				FUNC2(-1, "pread len %jd size %jd up",
				    (intmax_t)len, (intmax_t)size);
			if (ch != 0)
				FUNC2(-1,
				    "pread length %jd size %jd ch %d up",
				    (intmax_t)len, (intmax_t)size, ch);
		}
	}

	for (i = lengths_count - 1; i >= 0; i--) {
		len = lengths[i];
		if (FUNC4(fd, len) < 0)
			FUNC1(1, "ftruncate(%jd) down", (intmax_t)len);
		if (FUNC3(fd, &sb) < 0)
			FUNC1(1, "stat");
		if (sb.st_size != len)
			FUNC2(-1, "fstat(%jd) returned %jd down", (intmax_t)len,
			    sb.st_size);
	}
	FUNC0(fd);

	/*
	 * Make sure that a read-only descriptor can't be truncated.
	 */
	if (FUNC4(read_only_fd, 0) == 0)
		FUNC2(-1, "ftruncate(read_only_fd) succeeded");
	if (errno != EINVAL)
		FUNC1(1, "ftruncate(read_only_fd) returned wrong error");
	FUNC0(read_only_fd);

	/*
	 * Make sure that ftruncate on sockets doesn't work.
	 */
	fd = FUNC9(PF_UNIX, SOCK_STREAM, 0);
	if (fd < 0)
		FUNC1(1, "socket(PF_UNIX, SOCK_STREAM, 0)");
	if (FUNC4(fd, 0) == 0)
		FUNC2(-1, "ftruncate(socket) succeeded");
	if (errno != EINVAL)
		FUNC1(1, "ftruncate(socket) returned wrong error");
	FUNC0(fd);

	/*
	 * Make sure that ftruncate on pipes doesn't work.
	 */
	if (FUNC7(fds) < 0)
		FUNC1(1, "pipe");
	if (FUNC4(fds[0], 0) == 0)
		FUNC2(-1, "ftruncate(pipe) succeeded");
	if (errno != EINVAL)
		FUNC1(1, "ftruncate(pipe) returned wrong error");
	FUNC0(fds[0]);
	FUNC0(fds[1]);

	/*
	 * Make sure that ftruncate on kqueues doesn't work.
	 */
	fd = FUNC5();
	if (fd < 0)
		FUNC1(1, "kqueue");
	if (FUNC4(fds[0], 0) == 0)
		FUNC2(-1, "ftruncate(kqueue) succeeded");
	if (errno != EINVAL)
		FUNC1(1, "ftruncate(kqueue) returned wrong error");
	FUNC0(fd);

	return (0);
}