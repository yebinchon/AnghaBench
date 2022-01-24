#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  cs_nffree; int /*<<< orphan*/  cs_nifree; int /*<<< orphan*/  cs_nbfree; int /*<<< orphan*/  cs_ndir; } ;
struct TYPE_9__ {int /*<<< orphan*/  cs_nffree; int /*<<< orphan*/  cs_nifree; int /*<<< orphan*/  cs_nbfree; int /*<<< orphan*/  cs_ndir; } ;
struct fs {TYPE_2__ fs_cstotal; TYPE_1__ fs_old_cstotal; scalar_t__ fs_fmod; } ;
typedef  int /*<<< orphan*/  fsnode ;
struct TYPE_11__ {int fd; struct fs* superblock; int /*<<< orphan*/  curinode; scalar_t__ inodes; scalar_t__ size; } ;
typedef  TYPE_3__ fsinfo_t ;

/* Variables and functions */
 int DEBUG_FS_MAKEFS ; 
 int /*<<< orphan*/  FUNC0 (struct timeval,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval) ; 
 int /*<<< orphan*/  UFS_ROOTINO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char const*) ; 
 int FUNC7 (char const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (struct fs*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC12 (char) ; 

void
FUNC13(const char *image, const char *dir, fsnode *root, fsinfo_t *fsopts)
{
	struct fs	*superblock;
	struct timeval	start;

	FUNC2(image != NULL);
	FUNC2(dir != NULL);
	FUNC2(root != NULL);
	FUNC2(fsopts != NULL);

	if (debug & DEBUG_FS_MAKEFS)
		FUNC11("ffs_makefs: image %s directory %s root %p\n",
		    image, dir, root);

		/* validate tree and options */
	FUNC1(start);
	FUNC9(dir, root, fsopts);
	FUNC0(start, "ffs_validate");

	FUNC11("Calculated size of `%s': %lld bytes, %lld inodes\n",
	    image, (long long)fsopts->size, (long long)fsopts->inodes);

		/* create image */
	FUNC1(start);
	if (FUNC7(image, fsopts) == -1)
		FUNC6(1, "Image file `%s' not created.", image);
	FUNC0(start, "ffs_create_image");

	fsopts->curinode = UFS_ROOTINO;

	if (debug & DEBUG_FS_MAKEFS)
		FUNC12('\n');

		/* populate image */
	FUNC11("Populating `%s'\n", image);
	FUNC1(start);
	if (! FUNC8(dir, root, fsopts))
		FUNC6(1, "Image file `%s' not populated.", image);
	FUNC0(start, "ffs_populate_dir");

		/* ensure no outstanding buffers remain */
	if (debug & DEBUG_FS_MAKEFS)
		FUNC3();

		/* update various superblock parameters */
	superblock = fsopts->superblock;
	superblock->fs_fmod = 0;
	superblock->fs_old_cstotal.cs_ndir   = superblock->fs_cstotal.cs_ndir;
	superblock->fs_old_cstotal.cs_nbfree = superblock->fs_cstotal.cs_nbfree;
	superblock->fs_old_cstotal.cs_nifree = superblock->fs_cstotal.cs_nifree;
	superblock->fs_old_cstotal.cs_nffree = superblock->fs_cstotal.cs_nffree;

		/* write out superblock; image is now complete */
	FUNC10(fsopts->superblock, fsopts);
	if (FUNC4(fsopts->fd) == -1)
		FUNC5(1, "Closing `%s'", image);
	fsopts->fd = -1;
	FUNC11("Image `%s' complete\n", image);
}