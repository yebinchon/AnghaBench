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
typedef  int /*<<< orphan*/  temp ;
struct vnode {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct mount {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mle_grade; int /*<<< orphan*/  mle_type; } ;
struct mac_lomac {int ml_flags; TYPE_1__ ml_auxsingle; } ;
struct label {int dummy; } ;
struct componentname {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_NODELOCKED ; 
 int /*<<< orphan*/  MAC_LOMAC_EXTATTR_NAME ; 
 int /*<<< orphan*/  MAC_LOMAC_EXTATTR_NAMESPACE ; 
 int MAC_LOMAC_FLAG_AUX ; 
 struct mac_lomac* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_lomac*,size_t) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC2 (struct mac_lomac*,struct mac_lomac*) ; 
 int /*<<< orphan*/  FUNC3 (struct mac_lomac*,struct mac_lomac*) ; 
 int /*<<< orphan*/  FUNC4 (struct mac_lomac*,struct mac_lomac*) ; 
 int /*<<< orphan*/  FUNC5 (struct mac_lomac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct ucred *cred, struct mount *mp,
    struct label *mplabel, struct vnode *dvp, struct label *dvplabel,
    struct vnode *vp, struct label *vplabel, struct componentname *cnp)
{
	struct mac_lomac *source, *dest, *dir, temp;
	size_t buflen;
	int error;

	buflen = sizeof(temp);
	FUNC1(&temp, buflen);

	source = FUNC0(cred->cr_label);
	dest = FUNC0(vplabel);
	dir = FUNC0(dvplabel);
	if (dir->ml_flags & MAC_LOMAC_FLAG_AUX) {
		FUNC3(dir, &temp);
		FUNC5(&temp, dir->ml_auxsingle.mle_type,
		    dir->ml_auxsingle.mle_grade);
	} else {
		FUNC4(source, &temp);
	}

	error = FUNC6(vp, IO_NODELOCKED, MAC_LOMAC_EXTATTR_NAMESPACE,
	    MAC_LOMAC_EXTATTR_NAME, buflen, (char *)&temp, curthread);
	if (error == 0)
		FUNC2(&temp, dest);
	return (error);
}