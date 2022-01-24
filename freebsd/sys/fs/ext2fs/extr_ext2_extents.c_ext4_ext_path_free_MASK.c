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
struct ext4_extent_path {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_EXT2EXTENTS ; 
 int /*<<< orphan*/  FUNC0 (struct ext4_extent_path*) ; 
 int /*<<< orphan*/  FUNC1 (struct ext4_extent_path*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct ext4_extent_path *path)
{

	if (!path)
		return;

	FUNC0(path);
	FUNC1(path, M_EXT2EXTENTS);
}