#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct vnode {TYPE_1__* fs; } ;
struct timeval {int dummy; } ;
struct msdosfsmount {int dummy; } ;
struct TYPE_6__ {scalar_t__ offset; int bytes_per_sector; int /*<<< orphan*/  create_size; } ;
struct msdos_options_ex {TYPE_4__ options; } ;
typedef  int /*<<< orphan*/  fsnode ;
struct TYPE_5__ {scalar_t__ size; scalar_t__ maxsize; scalar_t__ offset; int sectorsize; int /*<<< orphan*/  fd; struct msdos_options_ex* fs_specific; } ;
typedef  TYPE_1__ fsinfo_t ;

/* Variables and functions */
 int DEBUG_FS_MAKEFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC1 (struct timeval,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int debug ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC10 (struct msdosfsmount*) ; 
 struct msdosfsmount* FUNC11 (struct vnode*) ; 
 scalar_t__ FUNC12 (struct msdosfsmount*,struct vnode*) ; 
 int /*<<< orphan*/  FUNC13 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC15 (char) ; 

void
FUNC16(const char *image, const char *dir, fsnode *root, fsinfo_t *fsopts)
{
	struct msdos_options_ex *msdos_opt = fsopts->fs_specific;
	struct vnode vp, rootvp;
	struct timeval start;
	struct msdosfsmount *pmp;
	uint32_t flags;

	FUNC4(image != NULL);
	FUNC4(dir != NULL);
	FUNC4(root != NULL);
	FUNC4(fsopts != NULL);

	fsopts->size = fsopts->maxsize;
	msdos_opt->options.create_size = FUNC0(msdos_opt->options.create_size,
	    fsopts->offset + fsopts->size);
	if (fsopts->offset > 0)
		msdos_opt->options.offset = fsopts->offset;
	if (msdos_opt->options.bytes_per_sector == 0) {
		if (fsopts->sectorsize == -1)
			fsopts->sectorsize = 512;
		msdos_opt->options.bytes_per_sector = fsopts->sectorsize;
	} else if (fsopts->sectorsize == -1) {
		fsopts->sectorsize = msdos_opt->options.bytes_per_sector;
	} else if (fsopts->sectorsize != msdos_opt->options.bytes_per_sector) {
		FUNC6(1, "inconsistent sectorsize -S %u"
		    "!= -o bytes_per_sector %u",
		    fsopts->sectorsize, msdos_opt->options.bytes_per_sector);
	}

	/* create image */
	FUNC14("Creating `%s'\n", image);
	FUNC2(start);
	if (FUNC8(image, NULL, &msdos_opt->options) == -1)
		return;
	FUNC1(start, "mkfs_msdos");

	fsopts->fd = FUNC13(image, O_RDWR);
	vp.fs = fsopts;

	flags = 0;
	if ((pmp = FUNC11(&vp)) == NULL)
		FUNC6(1, "msdosfs_mount");

	if (FUNC12(pmp, &rootvp) != 0)
		FUNC6(1, "msdosfs_root");

	if (debug & DEBUG_FS_MAKEFS)
		FUNC14("msdos_makefs: image %s directory %s root %p\n",
		    image, dir, root);

	/* populate image */
	FUNC14("Populating `%s'\n", image);
	FUNC2(start);
	if (FUNC9(dir, FUNC3(&rootvp), root, root, fsopts) == -1)
		FUNC7(1, "Image file `%s' not created.", image);
	FUNC1(start, "msdos_populate_dir");

	if (FUNC10(pmp) != 0)
		FUNC7(1, "Unable to update FSInfo block.");
	if (debug & DEBUG_FS_MAKEFS)
		FUNC15('\n');

	/* ensure no outstanding buffers remain */
	if (debug & DEBUG_FS_MAKEFS)
		FUNC5();

	FUNC14("Image `%s' complete\n", image);
}