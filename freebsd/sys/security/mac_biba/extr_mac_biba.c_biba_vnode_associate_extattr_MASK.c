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
struct mac_biba {int mb_flags; } ;
struct label {int dummy; } ;
typedef  int /*<<< orphan*/  mb_temp ;

/* Variables and functions */
 int ENOATTR ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int /*<<< orphan*/  IO_NODELOCKED ; 
 int /*<<< orphan*/  MAC_BIBA_EXTATTR_NAME ; 
 int /*<<< orphan*/  MAC_BIBA_EXTATTR_NAMESPACE ; 
 int MAC_BIBA_FLAGS_BOTH ; 
 int MAC_BIBA_FLAG_EFFECTIVE ; 
 struct mac_biba* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_biba*,struct mac_biba*) ; 
 scalar_t__ FUNC2 (struct mac_biba*) ; 
 int /*<<< orphan*/  FUNC3 (struct mac_biba*,int) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct mount *mp, struct label *mplabel,
    struct vnode *vp, struct label *vplabel)
{
	struct mac_biba mb_temp, *source, *dest;
	int buflen, error;

	source = FUNC0(mplabel);
	dest = FUNC0(vplabel);

	buflen = sizeof(mb_temp);
	FUNC3(&mb_temp, buflen);

	error = FUNC5(vp, IO_NODELOCKED, MAC_BIBA_EXTATTR_NAMESPACE,
	    MAC_BIBA_EXTATTR_NAME, &buflen, (char *) &mb_temp, curthread);
	if (error == ENOATTR || error == EOPNOTSUPP) {
		/* Fall back to the mntlabel. */
		FUNC1(source, dest);
		return (0);
	} else if (error)
		return (error);

	if (buflen != sizeof(mb_temp)) {
		FUNC4("biba_vnode_associate_extattr: bad size %d\n",
		    buflen);
		return (EPERM);
	}
	if (FUNC2(&mb_temp) != 0) {
		FUNC4("biba_vnode_associate_extattr: invalid\n");
		return (EPERM);
	}
	if ((mb_temp.mb_flags & MAC_BIBA_FLAGS_BOTH) !=
	    MAC_BIBA_FLAG_EFFECTIVE) {
		FUNC4("biba_vnode_associate_extattr: not effective\n");
		return (EPERM);
	}

	FUNC1(&mb_temp, dest);
	return (0);
}