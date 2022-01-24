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
struct partition_metadata {int /*<<< orphan*/ * newfs; TYPE_1__* fstab; int /*<<< orphan*/ * name; } ;
struct fstab {int /*<<< orphan*/  fs_passno; int /*<<< orphan*/  fs_freq; int /*<<< orphan*/ * fs_type; int /*<<< orphan*/ * fs_mntops; int /*<<< orphan*/ * fs_vfstype; int /*<<< orphan*/ * fs_file; int /*<<< orphan*/ * fs_spec; } ;
struct TYPE_2__ {int /*<<< orphan*/  fs_passno; int /*<<< orphan*/  fs_freq; void* fs_type; void* fs_mntops; void* fs_vfstype; void* fs_file; void* fs_spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct partition_metadata*,int /*<<< orphan*/ ) ; 
 struct partition_metadata* FUNC1 (int,int) ; 
 struct fstab* FUNC2 () ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  metadata ; 
 int /*<<< orphan*/  part_metadata ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void
FUNC7(void)
{
	struct fstab *fstab;
	struct partition_metadata *md;

	FUNC4();
	while ((fstab = FUNC2()) != NULL) {
		md = FUNC1(1, sizeof(struct partition_metadata));

		md->name = NULL;
		if (FUNC6(fstab->fs_spec, "/dev/", 5) == 0)
			md->name = FUNC5(&fstab->fs_spec[5]);

		md->fstab = FUNC3(sizeof(struct fstab));
		md->fstab->fs_spec = FUNC5(fstab->fs_spec);
		md->fstab->fs_file = FUNC5(fstab->fs_file);
		md->fstab->fs_vfstype = FUNC5(fstab->fs_vfstype);
		md->fstab->fs_mntops = FUNC5(fstab->fs_mntops);
		md->fstab->fs_type = FUNC5(fstab->fs_type);
		md->fstab->fs_freq = fstab->fs_freq;
		md->fstab->fs_passno = fstab->fs_passno;

		md->newfs = NULL;
		
		FUNC0(&part_metadata, md, metadata);
	}
}