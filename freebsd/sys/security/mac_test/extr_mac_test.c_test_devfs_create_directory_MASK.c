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
struct mount {int dummy; } ;
struct label {int dummy; } ;
struct devfs_dirent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_DEVFS ; 
 int /*<<< orphan*/  devfs_create_directory ; 

__attribute__((used)) static void
FUNC2(struct mount *mp, char *dirname,
    int dirnamelen, struct devfs_dirent *de, struct label *delabel)
{

	FUNC1(delabel, MAGIC_DEVFS);
	FUNC0(devfs_create_directory);
}