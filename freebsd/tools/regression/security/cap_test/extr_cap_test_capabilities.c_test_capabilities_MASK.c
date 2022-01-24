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

/* Variables and functions */
 int /*<<< orphan*/  AT_REMOVEDIR ; 
 int CAP_ACCEPT ; 
 int CAP_ACL_CHECK ; 
 int CAP_ACL_DELETE ; 
 int CAP_ACL_GET ; 
 int CAP_ACL_SET ; 
 int CAP_BIND ; 
 int CAP_CONNECT ; 
 int CAP_CREATE ; 
 int CAP_EVENT ; 
 int CAP_EXTATTR_DELETE ; 
 int CAP_EXTATTR_GET ; 
 int CAP_EXTATTR_LIST ; 
 int CAP_EXTATTR_SET ; 
 int CAP_FCHDIR ; 
 int CAP_FCHFLAGS ; 
 int CAP_FCHMOD ; 
 int CAP_FCHOWN ; 
 int CAP_FCNTL ; 
 int CAP_FEXECVE ; 
 int CAP_FLOCK ; 
 int CAP_FPATHCONF ; 
 int CAP_FSCK ; 
 int CAP_FSTAT ; 
 int CAP_FSTATFS ; 
 int CAP_FSYNC ; 
 int CAP_FTRUNCATE ; 
 int CAP_FUTIMES ; 
 int CAP_GETPEERNAME ; 
 int CAP_GETSOCKNAME ; 
 int CAP_GETSOCKOPT ; 
 int CAP_IOCTL ; 
 int CAP_LINKAT ; 
 int CAP_LISTEN ; 
 int CAP_LOOKUP ; 
 int CAP_MAC_GET ; 
 int CAP_MAC_SET ; 
 int CAP_MKDIRAT ; 
 int CAP_MKFIFOAT ; 
 int CAP_MKNODAT ; 
 int CAP_MMAP ; 
 int CAP_MMAP_R ; 
 int CAP_MMAP_RW ; 
 int CAP_MMAP_RWX ; 
 int CAP_MMAP_RX ; 
 int CAP_MMAP_W ; 
 int CAP_MMAP_WX ; 
 int CAP_MMAP_X ; 
 int CAP_PDGETPID ; 
 int CAP_PDKILL ; 
 int CAP_PDWAIT ; 
 int CAP_PEELOFF ; 
 int CAP_POST_EVENT ; 
 int CAP_PREAD ; 
 int CAP_PWRITE ; 
 int CAP_READ ; 
 int CAP_RECV ; 
 int CAP_RENAMEAT ; 
 int CAP_SEEK ; 
 int CAP_SEM_GETVALUE ; 
 int CAP_SEM_POST ; 
 int CAP_SEM_WAIT ; 
 int CAP_SEND ; 
 int CAP_SETSOCKOPT ; 
 int CAP_SHUTDOWN ; 
 int CAP_SYMLINKAT ; 
 int CAP_TTYHOOK ; 
 int CAP_UNLINKAT ; 
 int CAP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int PASSED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int /*<<< orphan*/ ) ; 

int
FUNC11(void)
{
	int filefd, dirfd, tmpfd;
	int success = PASSED;
	char file[] = "/tmp/cap_test.XXXXXXXXXX";
	char dir[] = "/tmp/cap_test.XXXXXXXXXX";

	filefd = FUNC5(file);
	if (filefd < 0)
		FUNC3(-1, "mkstemp");
	if (FUNC4(dir) == NULL) {
		FUNC0(FUNC9(file));
		FUNC3(-1, "mkdtemp");
	}
	dirfd = FUNC6(dir, O_RDONLY | O_DIRECTORY);
	if (dirfd == -1) {
		FUNC0(FUNC9(file));
		FUNC0(FUNC7(dir));
		FUNC3(-1, "open");
	}
	tmpfd = FUNC6("/tmp", O_RDONLY | O_DIRECTORY);
	if (tmpfd == -1) {
		FUNC0(FUNC9(file));
		FUNC0(FUNC7(dir));
		FUNC3(-1, "open");
	}

	if (FUNC2() == -1) {
		FUNC0(FUNC9(file));
		FUNC0(FUNC7(dir));
		FUNC3(-1, "cap_enter");
	}

	FUNC1(CAP_READ);
	FUNC1(CAP_WRITE);
	FUNC1(CAP_SEEK);
	FUNC1(CAP_PREAD);
	FUNC1(CAP_PWRITE);
	FUNC1(CAP_READ | CAP_WRITE);
	FUNC1(CAP_PREAD | CAP_PWRITE);
	FUNC1(CAP_MMAP);
	FUNC1(CAP_MMAP_R);
	FUNC1(CAP_MMAP_W);
	FUNC1(CAP_MMAP_X);
	FUNC1(CAP_MMAP_RW);
	FUNC1(CAP_MMAP_RX);
	FUNC1(CAP_MMAP_WX);
	FUNC1(CAP_MMAP_RWX);
	FUNC1(CAP_CREATE | CAP_READ | CAP_LOOKUP);
	FUNC1(CAP_CREATE | CAP_WRITE | CAP_LOOKUP);
	FUNC1(CAP_CREATE | CAP_READ | CAP_WRITE | CAP_LOOKUP);
#ifdef TODO
	TRY(CAP_FEXECVE);
#endif
	FUNC1(CAP_FSYNC);
	FUNC1(CAP_FSYNC | CAP_READ | CAP_LOOKUP);
	FUNC1(CAP_FSYNC | CAP_WRITE | CAP_LOOKUP);
	FUNC1(CAP_FSYNC | CAP_READ | CAP_WRITE | CAP_LOOKUP);
	FUNC1(CAP_FTRUNCATE);
	FUNC1(CAP_FTRUNCATE | CAP_READ | CAP_LOOKUP);
	FUNC1(CAP_FTRUNCATE | CAP_WRITE | CAP_LOOKUP);
	FUNC1(CAP_FTRUNCATE | CAP_READ | CAP_WRITE | CAP_LOOKUP);
#ifdef TODO
	TRY(CAP_FCHDIR);
#endif
	FUNC1(CAP_FCHFLAGS);
	FUNC1(CAP_FCHOWN);
	FUNC1(CAP_FCHOWN | CAP_LOOKUP);
	FUNC1(CAP_FCHMOD | CAP_LOOKUP);
	FUNC1(CAP_FCNTL);
#ifdef TODO
	TRY(CAP_FLOCK);
#endif
	FUNC1(CAP_FPATHCONF);
#ifdef TODO
	TRY(CAP_FSCK);
#endif
	FUNC1(CAP_FSTAT | CAP_LOOKUP);
	FUNC1(CAP_FSTATFS);
	FUNC1(CAP_FUTIMES | CAP_LOOKUP);
	FUNC1(CAP_LINKAT | CAP_LOOKUP);
	FUNC1(CAP_MKDIRAT | CAP_LOOKUP);
	FUNC1(CAP_MKFIFOAT | CAP_LOOKUP);
	FUNC1(CAP_MKNODAT | CAP_LOOKUP);
	FUNC1(CAP_SYMLINKAT | CAP_LOOKUP);
	FUNC1(CAP_UNLINKAT | CAP_LOOKUP);
	/* Rename needs CAP_RENAMEAT on source directory and CAP_LINKAT on destination directory. */
	FUNC1(CAP_RENAMEAT | CAP_UNLINKAT | CAP_LOOKUP);
#ifdef TODO
	TRY(CAP_LOOKUP);
	TRY(CAP_EXTATTR_DELETE);
	TRY(CAP_EXTATTR_GET);
	TRY(CAP_EXTATTR_LIST);
	TRY(CAP_EXTATTR_SET);
	TRY(CAP_ACL_CHECK);
	TRY(CAP_ACL_DELETE);
	TRY(CAP_ACL_GET);
	TRY(CAP_ACL_SET);
	TRY(CAP_ACCEPT);
	TRY(CAP_BIND);
	TRY(CAP_CONNECT);
	TRY(CAP_GETPEERNAME);
	TRY(CAP_GETSOCKNAME);
	TRY(CAP_GETSOCKOPT);
	TRY(CAP_LISTEN);
	TRY(CAP_PEELOFF);
	TRY(CAP_RECV);
	TRY(CAP_SEND);
	TRY(CAP_SETSOCKOPT);
	TRY(CAP_SHUTDOWN);
	TRY(CAP_MAC_GET);
	TRY(CAP_MAC_SET);
	TRY(CAP_SEM_GETVALUE);
	TRY(CAP_SEM_POST);
	TRY(CAP_SEM_WAIT);
	TRY(CAP_POST_EVENT);
	TRY(CAP_EVENT);
	TRY(CAP_IOCTL);
	TRY(CAP_TTYHOOK);
	TRY(CAP_PDGETPID);
	TRY(CAP_PDWAIT);
	TRY(CAP_PDKILL);
#endif

	(void)FUNC10(tmpfd, file + FUNC8("/tmp/"), 0);
	(void)FUNC10(tmpfd, dir + FUNC8("/tmp/"), AT_REMOVEDIR);

	return (success);
}