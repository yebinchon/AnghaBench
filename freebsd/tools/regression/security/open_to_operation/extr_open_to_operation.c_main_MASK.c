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
typedef  int /*<<< orphan*/  file_path ;
typedef  int /*<<< orphan*/  dummy ;
typedef  int /*<<< orphan*/  dir_path ;

/* Variables and functions */
 scalar_t__ EISDIR ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  PERM_DIR ; 
 int /*<<< orphan*/  PERM_FILE ; 
 int aio_present ; 
 int /*<<< orphan*/  aio_read_wrapper ; 
 int /*<<< orphan*/  aio_write_wrapper ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  dir_modes ; 
 int /*<<< orphan*/  dir_modes_count ; 
 int /*<<< orphan*/  FUNC25 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  file_modes ; 
 int /*<<< orphan*/  file_modes_count ; 
 int /*<<< orphan*/ * FUNC27 (char*) ; 
 int FUNC28 (char*) ; 
 int /*<<< orphan*/  pread_wrapper ; 
 int /*<<< orphan*/  preadv_wrapper ; 
 int /*<<< orphan*/  pwrite_wrapper ; 
 int /*<<< orphan*/  pwritev_wrapper ; 
 int /*<<< orphan*/  read ; 
 int /*<<< orphan*/  readv_wrapper ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 int /*<<< orphan*/  FUNC30 (char*,char*,int) ; 
 scalar_t__ FUNC31 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (char*) ; 
 int /*<<< orphan*/  FUNC33 (char*,...) ; 
 int /*<<< orphan*/  write ; 
 int /*<<< orphan*/  writev_wrapper ; 

int
FUNC34(void)
{
	char dir_path[PATH_MAX], file_path[PATH_MAX];
	int dummy, fd;
	size_t size;

	aio_present = 0;
	size = sizeof(dummy);
	if (FUNC31("vfs.aio", &dummy, &size, NULL, 0) < 0) {
		if (errno == EISDIR)
			aio_present = 1;
	}

	FUNC30(dir_path, "/tmp/open-dir.XXXXXXXXXXX", sizeof(dir_path));
	if (FUNC27(dir_path) == NULL)
		FUNC25(1, "mkdtemp");
	if (FUNC23(dir_path, PERM_DIR) < 0) {
		FUNC33("chmod %s", dir_path);
		(void)FUNC29(dir_path);
		FUNC26(1);
	}
	FUNC30(file_path, "/tmp/open-file.XXXXXXXXXXX", sizeof(file_path));
	fd = FUNC28(file_path);
	if (fd < 0) {
		FUNC33("mkstemp");
		(void)FUNC29(dir_path);
		FUNC26(1);
	}
	FUNC24(fd);
	if (FUNC23(file_path, PERM_FILE) < 0) {
		FUNC33("chmod %s", file_path);
		(void)FUNC32(file_path);
		(void)FUNC29(dir_path);
		FUNC26(1);
	}
	FUNC0(dir_path, file_modes, file_modes_count);

	FUNC1("check_dup_dir", dir_path, dir_modes, dir_modes_count);
	FUNC1("check_dup_file", file_path, file_modes, file_modes_count);

	FUNC2("check_dup2_dir", dir_path, dir_modes, dir_modes_count);
	FUNC2("check_dup2_file", file_path, file_modes,
	    file_modes_count);

	FUNC3("check_fchdir", dir_path, dir_modes, dir_modes_count);

	FUNC4("check_fchflags_dir", dir_path, dir_modes,
	    dir_modes_count);
	FUNC4("check_fchflags_file", file_path, file_modes,
	    file_modes_count);

	FUNC5("check_fchmod_dir", dir_path, PERM_DIR, dir_modes,
	    dir_modes_count);
	FUNC5("check_fchmod_file", file_path, PERM_FILE, file_modes,
	    file_modes_count);

	FUNC6("check_fchown_dir", dir_path, dir_modes,
	    dir_modes_count);
	FUNC6("check_fchown_file", file_path, file_modes,
	    file_modes_count);

	FUNC7("check_flock_dir", dir_path, dir_modes, dir_modes_count);
	FUNC7("check_flock_file", file_path, file_modes,
	    file_modes_count);

	FUNC8("check_fpathconf_dir", dir_path, dir_modes,
	    dir_modes_count);
	FUNC8("check_fpathconf_file", file_path, file_modes,
	    file_modes_count);

	FUNC9("check_fstat_dir", dir_path, dir_modes, dir_modes_count);
	FUNC9("check_fstat_file", file_path, file_modes,
	    file_modes_count);

	FUNC10("check_fstatfs_dir", dir_path, dir_modes,
	    dir_modes_count);
	FUNC10("check_fstatfs_file", file_path, file_modes,
	    file_modes_count);

	FUNC11("check_fsync_dir", dir_path, dir_modes, dir_modes_count);
	FUNC11("check_fsync_file", file_path, file_modes,
	    file_modes_count);

	FUNC12("check_ftruncate_dir", dir_path, dir_modes,
	    dir_modes_count);
	FUNC12("check_ftruncate_file", file_path, file_modes,
	    file_modes_count);

	FUNC13("check_futimes_dir", dir_path, dir_modes,
	    dir_modes_count);
	FUNC13("check_futimes_file", file_path, file_modes,
	    file_modes_count);

	FUNC15("check_lseek_dir", dir_path, dir_modes, dir_modes_count);
	FUNC15("check_lseek_file", file_path, file_modes,
	    file_modes_count);

	FUNC14("check_getdents_dir", dir_path, 1, dir_modes,
	    dir_modes_count);
	FUNC14("check_getdents_file", file_path, 0, file_modes,
	    file_modes_count);

	FUNC21("check_sendfile_dir", dir_path, 1, dir_modes,
	    dir_modes_count);
	FUNC21("check_sendfile_file", file_path, 0, file_modes,
	    file_modes_count);

	FUNC22("check_write_dir", write, dir_path, dir_modes,
	    dir_modes_count);
	FUNC22("check_write_file", write, file_path, file_modes,
	    file_modes_count);

	FUNC22("check_writev_dir", writev_wrapper, dir_path, dir_modes,
	    dir_modes_count);
	FUNC22("check_writev_file", writev_wrapper, file_path,
	    file_modes, file_modes_count);

	FUNC22("check_pwrite_dir", pwrite_wrapper, dir_path, dir_modes,
	    dir_modes_count);
	FUNC22("check_pwrite_file", pwrite_wrapper, file_path,
	    file_modes, file_modes_count);

	FUNC22("check_pwritev_dir", pwritev_wrapper, dir_path,
	    dir_modes, dir_modes_count);
	FUNC22("check_pwritev_file", pwritev_wrapper, file_path,
	    file_modes, file_modes_count);

	if (aio_present) {
		FUNC22("check_aio_write_dir", aio_write_wrapper,
		    dir_path, dir_modes, dir_modes_count);
		FUNC22("check_aio_write_file", aio_write_wrapper,
		    file_path, file_modes, file_modes_count);
	}

	FUNC20("check_read_dir", read, dir_path, dir_modes,
	    dir_modes_count);
	FUNC20("check_read_file", read, file_path, file_modes,
	    file_modes_count);

	FUNC20("check_readv_dir", readv_wrapper, dir_path, dir_modes,
	    dir_modes_count);
	FUNC20("check_readv_file", readv_wrapper, file_path,
	    file_modes, file_modes_count);

	FUNC20("check_pread_dir", pread_wrapper, dir_path, dir_modes,
	    dir_modes_count);
	FUNC20("check_pread_file", pread_wrapper, file_path,
	    file_modes, file_modes_count);

	FUNC20("check_preadv_dir", preadv_wrapper, dir_path,
	    dir_modes, dir_modes_count);
	FUNC20("check_preadv_file", preadv_wrapper, file_path,
	    file_modes, file_modes_count);

	if (aio_present) {
		FUNC20("check_aio_read_dir", aio_read_wrapper, dir_path,
		    dir_modes, dir_modes_count);
		FUNC20("check_aio_read_file", aio_read_wrapper,
		    file_path, file_modes, file_modes_count);
	}

	FUNC17("check_mmap_read_dir", dir_path, 1, dir_modes,
	    dir_modes_count);
	FUNC17("check_mmap_read_file", file_path, 0, file_modes,
	    file_modes_count);

	FUNC18("check_mmap_write_dir", dir_path, dir_modes,
	    dir_modes_count);
	FUNC18("check_mmap_write_file", file_path, file_modes,
	    file_modes_count);

	FUNC16("check_mmap_exec_dir", dir_path, 1, dir_modes,
	    dir_modes_count);
	FUNC16("check_mmap_exec_file", file_path, 0, file_modes,
	    file_modes_count);

	FUNC19("check_mmap_write_private_dir", dir_path, 1,
	    dir_modes, dir_modes_count);
	FUNC19("check_mmap_write_private_file", file_path,
	    0, file_modes, file_modes_count);

	(void)FUNC32(file_path);
	(void)FUNC29(dir_path);
	FUNC26(0);
}