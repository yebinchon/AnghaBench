#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct statvfs {int f_iosize; } ;
struct TYPE_7__ {scalar_t__ cs_nifree; scalar_t__ cs_ndir; scalar_t__ cs_nffree; scalar_t__ cs_nbfree; } ;
struct fs {TYPE_1__ fs_cstotal; scalar_t__ fs_time; } ;
typedef  scalar_t__ off_t ;
struct TYPE_8__ {scalar_t__ offset; int fd; scalar_t__ size; scalar_t__ inodes; void* superblock; scalar_t__ sparse; } ;
typedef  TYPE_2__ fsinfo_t ;
struct TYPE_10__ {scalar_t__ st_ino; scalar_t__ st_ctime; } ;
struct TYPE_9__ {scalar_t__ tv_sec; } ;

/* Variables and functions */
 int DEBUG_FS_CREATE_IMAGE ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ UFS_ROOTINO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (scalar_t__*) ; 
 int debug ; 
 char* FUNC3 (int,int) ; 
 struct fs* FUNC4 (char const*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,struct statvfs*) ; 
 int FUNC7 (int,scalar_t__) ; 
 int FUNC8 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC9 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 TYPE_4__ stampst ; 
 TYPE_3__ start_time ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,long long,long long) ; 
 int FUNC14 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(const char *image, fsinfo_t *fsopts)
{
#if HAVE_STRUCT_STATVFS_F_IOSIZE && HAVE_FSTATVFS
	struct statvfs	sfs;
#endif
	struct fs	*fs;
	char	*buf;
	int	i, bufsize;
	off_t	bufrem;
	int	oflags = O_RDWR | O_CREAT;
	time_t	tstamp;

	FUNC1 (image != NULL);
	FUNC1 (fsopts != NULL);

		/* create image */
	if (fsopts->offset == 0)
		oflags |= O_TRUNC;
	if ((fsopts->fd = FUNC9(image, oflags, 0666)) == -1) {
		FUNC12("Can't open `%s' for writing", image);
		return (-1);
	}

		/* zero image */
#if HAVE_STRUCT_STATVFS_F_IOSIZE && HAVE_FSTATVFS
	if (fstatvfs(fsopts->fd, &sfs) == -1) {
#endif
		bufsize = 8192;
#if HAVE_STRUCT_STATVFS_F_IOSIZE && HAVE_FSTATVFS
		warn("can't fstatvfs `%s', using default %d byte chunk",
		    image, bufsize);
	} else
		bufsize = sfs.f_iosize;
#endif
	bufrem = fsopts->size;
	if (fsopts->sparse) {
		if (FUNC7(fsopts->fd, bufrem) == -1) {
			FUNC12("sparse option disabled.");
			fsopts->sparse = 0;
		}
	}
	if (fsopts->sparse) {
		/* File truncated at bufrem. Remaining is 0 */
		bufrem = 0;
		buf = NULL;
	} else {
		if (debug & DEBUG_FS_CREATE_IMAGE)
			FUNC10("zero-ing image `%s', %lld sectors, "
			    "using %d byte chunks\n", image, (long long)bufrem,
			    bufsize);
		buf = FUNC3(1, bufsize);
	}

	if (fsopts->offset != 0)
		if (FUNC8(fsopts->fd, fsopts->offset, SEEK_SET) == -1) {
			FUNC12("can't seek");
			FUNC5(buf);
			return -1;
		}

	while (bufrem > 0) {
		i = FUNC14(fsopts->fd, buf, FUNC0(bufsize, bufrem));
		if (i == -1) {
			FUNC12("zeroing image, %lld bytes to go",
			    (long long)bufrem);
			FUNC5(buf);
			return (-1);
		}
		bufrem -= i;
	}
	if (buf)
		FUNC5(buf);

		/* make the file system */
	if (debug & DEBUG_FS_CREATE_IMAGE)
		FUNC10("calling mkfs(\"%s\", ...)\n", image);

	if (stampst.st_ino != 0)
		tstamp = stampst.st_ctime;
	else
		tstamp = start_time.tv_sec;

	FUNC11(tstamp);

	fs = FUNC4(image, fsopts, tstamp);
	fsopts->superblock = (void *)fs;
	if (debug & DEBUG_FS_CREATE_IMAGE) {
		time_t t;

		t = (time_t)((struct fs *)fsopts->superblock)->fs_time;
		FUNC10("mkfs returned %p; fs_time %s",
		    fsopts->superblock, FUNC2(&t));
		FUNC10("fs totals: nbfree %lld, nffree %lld, nifree %lld, ndir %lld\n",
		    (long long)fs->fs_cstotal.cs_nbfree,
		    (long long)fs->fs_cstotal.cs_nffree,
		    (long long)fs->fs_cstotal.cs_nifree,
		    (long long)fs->fs_cstotal.cs_ndir);
	}

	if (fs->fs_cstotal.cs_nifree + UFS_ROOTINO < fsopts->inodes) {
		FUNC13(
		"Image file `%s' has %lld free inodes; %lld are required.",
		    image,
		    (long long)(fs->fs_cstotal.cs_nifree + UFS_ROOTINO),
		    (long long)fsopts->inodes);
		return (-1);
	}
	return (fsopts->fd);
}