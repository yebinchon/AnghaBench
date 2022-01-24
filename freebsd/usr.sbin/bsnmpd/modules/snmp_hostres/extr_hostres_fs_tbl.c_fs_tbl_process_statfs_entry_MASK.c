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
struct statfs {int f_flags; char* f_mntfromname; int /*<<< orphan*/  f_mntonname; } ;
struct fs_entry {int /*<<< orphan*/  index; int /*<<< orphan*/  lastPartialBackupDate; int /*<<< orphan*/  lastFullBackupDate; int /*<<< orphan*/  storageIndex; int /*<<< orphan*/  bootable; int /*<<< orphan*/  access; int /*<<< orphan*/  type; void* remoteMountPoint; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FS_READ_ONLY ; 
 int /*<<< orphan*/  FS_READ_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HR_FS_FOUND ; 
 int MNT_LOCAL ; 
 int MNT_RDONLY ; 
 int MNT_ROOTFS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct fs_entry* FUNC3 (int /*<<< orphan*/ ) ; 
 struct fs_entry* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct statfs const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC8 (char*) ; 

void
FUNC9(const struct statfs *fs_p, int32_t storage_idx)
{
	struct fs_entry *entry;

	FUNC2(fs_p != 0);

	FUNC0("for hrStorageEntry::index %d", storage_idx);

	if (fs_p == NULL)
		return;

	if ((entry = FUNC4(fs_p->f_mntonname)) != NULL ||
	    (entry = FUNC3(fs_p->f_mntonname)) != NULL) {
		entry->flags |= HR_FS_FOUND;

		if (!(fs_p->f_flags & MNT_LOCAL)) {
			/* this is a remote mount */
			entry->remoteMountPoint = FUNC8(fs_p->f_mntfromname);
			/* if strdup failed, let it be NULL */

		} else {
			entry->remoteMountPoint = FUNC8("");
			/* if strdup failed, let it be NULL */
		}

		entry->type = FUNC5(fs_p);

		if ((fs_p->f_flags & MNT_RDONLY) == MNT_RDONLY)
			entry->access = FS_READ_ONLY;
		else
			entry->access = FS_READ_WRITE;

		/* FIXME - bootable fs ?! */
		entry->bootable = FUNC1((fs_p->f_flags & MNT_ROOTFS)
		    == MNT_ROOTFS);

		entry->storageIndex = storage_idx;

		/* Info not available */
		FUNC7(entry->lastFullBackupDate, 0,
		    sizeof(entry->lastFullBackupDate));

		/* Info not available */
		FUNC7(entry->lastPartialBackupDate, 0,
		    sizeof(entry->lastPartialBackupDate));

		FUNC6(fs_p->f_mntfromname, entry->index);
	}
}