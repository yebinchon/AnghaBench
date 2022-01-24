#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fs {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int off_t ;
typedef  scalar_t__ intmax_t ;
struct TYPE_3__ {scalar_t__ fs_magic; } ;
struct TYPE_4__ {int /*<<< orphan*/ * buf; TYPE_1__ sblock; } ;

/* Variables and functions */
 scalar_t__ DEV_BSIZE ; 
 scalar_t__ FS_UFS1_MAGIC ; 
 scalar_t__ FS_UFS2_MAGIC ; 
 int /*<<< orphan*/  O_RDONLY ; 
 size_t SBLOCKSIZE ; 
 scalar_t__ SBLOCK_UFS1 ; 
 scalar_t__ SBLOCK_UFS2 ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char FUNC3 (int,char**,char*) ; 
 int FUNC4 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,...) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (char*,char**,int) ; 
 TYPE_2__ u ; 

int
FUNC10(int argc, char **argv)
{
	off_t end, last1, last2;
	size_t len;
	ssize_t justread;
	int fd;
	char *ch;
	char c;
	intmax_t offset;

	offset = 0;
	while ((c = FUNC3(argc, argv, "o:")) != -1) {
		switch (c) {
		case 'o':
			if (optarg[0] == '\0')
				FUNC1(1, "usage");
			offset = FUNC9(optarg, &ch, 10);
			if (*ch != '\0' || offset < 0)
				FUNC1(1, "usage");
			offset -= offset % DEV_BSIZE;
			break;

		default:
			FUNC1(1, "usage");
		}
	}
	argc -= optind;
	argv += optind;

	if (argc != 1)
		FUNC1(1, "usage");

	fd = FUNC6(argv[0], O_RDONLY, 0);
	if (fd < 0)
		FUNC0(1, "%s", argv[0]);

	if (offset != 0) {
		end = FUNC4(fd, offset, SEEK_SET);
		if (end == -1)
			FUNC0(1, "%s", argv[0]);
	} else {
		end = 0;
	}
	len = 0;
	last1 = last2 = -1;

	while (1) {
		justread = FUNC8(fd, &u.buf[len], DEV_BSIZE);
		if (justread != DEV_BSIZE) {
			if (justread == 0) {
				FUNC7("reached end-of-file at %jd\n",
				       (intmax_t)end);
				FUNC2 (0);
			}
			if (justread < 0)
				FUNC0(1, "read");
			FUNC1(1, "short read %jd (wanted %d) at %jd",
			     (intmax_t)justread, DEV_BSIZE, (intmax_t)end);
		}
		len += DEV_BSIZE;
		end += DEV_BSIZE;
		if (len >= sizeof(struct fs)) {
			offset = end - len;

			if (u.sblock.fs_magic == FS_UFS1_MAGIC) {
				intmax_t fsbegin = offset - SBLOCK_UFS1;
				FUNC7("Found UFS1 superblock at offset %jd, "
				       "block %jd\n", offset,
				       offset / DEV_BSIZE);
				FUNC7("Filesystem might begin at offset %jd, "
				       "block %jd\n", fsbegin,
				       fsbegin / DEV_BSIZE);
				if (last1 >= 0) {
					FUNC7("%jd blocks from last guess\n",
					       fsbegin / DEV_BSIZE - last1);
				}
				last1 = fsbegin / DEV_BSIZE;
				len -= DEV_BSIZE;
				FUNC5(u.buf, &u.buf[DEV_BSIZE], len);
			} else if (u.sblock.fs_magic == FS_UFS2_MAGIC) {
				intmax_t fsbegin = offset - SBLOCK_UFS2;
				FUNC7("Found UFS2 superblock at offset %jd, "
				       "block %jd\n", offset,
				       offset / DEV_BSIZE);
				FUNC7("Filesystem might begin at offset %jd, "
				       "block %jd\n", fsbegin,
				       fsbegin / DEV_BSIZE);
				if (last2 >= 0) {
					FUNC7("%jd blocks from last guess\n",
					       fsbegin / DEV_BSIZE - last2);
				}
				last2 = fsbegin / DEV_BSIZE;
				len -= DEV_BSIZE;
				FUNC5(u.buf, &u.buf[DEV_BSIZE], len);
			}
		}
		if (len >= SBLOCKSIZE) {
			FUNC5(u.buf, &u.buf[DEV_BSIZE], 
				SBLOCKSIZE - DEV_BSIZE);
			len -= DEV_BSIZE;
		}
	}
}