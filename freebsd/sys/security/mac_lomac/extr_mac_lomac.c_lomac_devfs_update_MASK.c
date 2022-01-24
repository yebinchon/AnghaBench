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
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;
struct devfs_dirent {int dummy; } ;

/* Variables and functions */
 struct mac_lomac* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_lomac*,struct mac_lomac*) ; 

__attribute__((used)) static void
FUNC2(struct mount *mp, struct devfs_dirent *de,
    struct label *delabel, struct vnode *vp, struct label *vplabel)
{
	struct mac_lomac *source, *dest;

	source = FUNC0(vplabel);
	dest = FUNC0(delabel);

	FUNC1(source, dest);
}