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
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
struct devfs_dirent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_MLS_TYPE_LOW ; 
 struct mac_mls* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_mls*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct mount *mp, char *dirname, int dirnamelen,
    struct devfs_dirent *de, struct label *delabel)
{
	struct mac_mls *mm;

	mm = FUNC0(delabel);
	FUNC1(mm, MAC_MLS_TYPE_LOW, 0, NULL);
}