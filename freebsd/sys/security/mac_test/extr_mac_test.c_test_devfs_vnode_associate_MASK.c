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
struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct label {int dummy; } ;
struct devfs_dirent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_DEVFS ; 
 int /*<<< orphan*/  MAGIC_MOUNT ; 
 int /*<<< orphan*/  MAGIC_VNODE ; 
 int /*<<< orphan*/  devfs_vnode_associate ; 

__attribute__((used)) static void
FUNC2(struct mount *mp, struct label *mplabel,
    struct devfs_dirent *de, struct label *delabel, struct vnode *vp,
    struct label *vplabel)
{

	FUNC1(mplabel, MAGIC_MOUNT);
	FUNC1(delabel, MAGIC_DEVFS);
	FUNC1(vplabel, MAGIC_VNODE);
	FUNC0(devfs_vnode_associate);
}