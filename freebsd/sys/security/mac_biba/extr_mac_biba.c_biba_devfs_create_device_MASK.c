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
struct ucred {int dummy; } ;
struct mount {int dummy; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;
struct devfs_dirent {int dummy; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int MAC_BIBA_TYPE_EQUAL ; 
 int MAC_BIBA_TYPE_HIGH ; 
 struct mac_biba* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_biba*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (struct cdev*) ; 
 scalar_t__ ptys_equal ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct ucred *cred, struct mount *mp,
    struct cdev *dev, struct devfs_dirent *de, struct label *delabel)
{
	struct mac_biba *mb;
	const char *dn;
	int biba_type;

	mb = FUNC0(delabel);
	dn = FUNC2(dev);
	if (FUNC3(dn, "null") == 0 ||
	    FUNC3(dn, "zero") == 0 ||
	    FUNC3(dn, "random") == 0 ||
	    FUNC5(dn, "fd/", FUNC4("fd/")) == 0)
		biba_type = MAC_BIBA_TYPE_EQUAL;
	else if (ptys_equal &&
	    (FUNC5(dn, "ttyp", FUNC4("ttyp")) == 0 ||
	    FUNC5(dn, "pts/", FUNC4("pts/")) == 0 ||
	    FUNC5(dn, "ptyp", FUNC4("ptyp")) == 0))
		biba_type = MAC_BIBA_TYPE_EQUAL;
	else
		biba_type = MAC_BIBA_TYPE_HIGH;
	FUNC1(mb, biba_type, 0, NULL);
}