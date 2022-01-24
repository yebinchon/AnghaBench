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
struct TYPE_2__ {int /*<<< orphan*/  ec_type; } ;
struct inode {int i_flag; int /*<<< orphan*/  i_vnode; TYPE_1__ i_ext_cache; scalar_t__ i_data; } ;
struct ext4_extent_header {int /*<<< orphan*/  eh_max; int /*<<< orphan*/  eh_magic; } ;

/* Variables and functions */
 scalar_t__ EXT2_NDADDR ; 
 scalar_t__ EXT2_NIADDR ; 
 int /*<<< orphan*/  EXT4_EXT_CACHE_NO ; 
 int /*<<< orphan*/  EXT4_EXT_MAGIC ; 
 int IN_CHANGE ; 
 int IN_E4EXTENTS ; 
 int IN_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC3(struct inode *ip)
{
	struct ext4_extent_header *ehp;

	ip->i_flag |= IN_E4EXTENTS;

	FUNC2(ip->i_data, 0, EXT2_NDADDR + EXT2_NIADDR);
	ehp = (struct ext4_extent_header *)ip->i_data;
	ehp->eh_magic = EXT4_EXT_MAGIC;
	ehp->eh_max = FUNC1(ip);
	ip->i_ext_cache.ec_type = EXT4_EXT_CACHE_NO;
	ip->i_flag |= IN_CHANGE | IN_UPDATE;
	FUNC0(ip->i_vnode, 1);
}