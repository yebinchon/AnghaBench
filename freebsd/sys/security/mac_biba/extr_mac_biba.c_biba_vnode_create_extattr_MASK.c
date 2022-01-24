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
struct ucred {struct label* cr_label; } ;
struct mount {int dummy; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;
struct componentname {int dummy; } ;
typedef  int /*<<< orphan*/  mb_temp ;

/* Variables and functions */
 int /*<<< orphan*/  IO_NODELOCKED ; 
 int /*<<< orphan*/  MAC_BIBA_EXTATTR_NAME ; 
 int /*<<< orphan*/  MAC_BIBA_EXTATTR_NAMESPACE ; 
 struct mac_biba* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_biba*,struct mac_biba*) ; 
 int /*<<< orphan*/  FUNC2 (struct mac_biba*,size_t) ; 
 int /*<<< orphan*/  curthread ; 
 int FUNC3 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct ucred *cred, struct mount *mp,
    struct label *mplabel, struct vnode *dvp, struct label *dvplabel,
    struct vnode *vp, struct label *vplabel, struct componentname *cnp)
{
	struct mac_biba *source, *dest, mb_temp;
	size_t buflen;
	int error;

	buflen = sizeof(mb_temp);
	FUNC2(&mb_temp, buflen);

	source = FUNC0(cred->cr_label);
	dest = FUNC0(vplabel);
	FUNC1(source, &mb_temp);

	error = FUNC3(vp, IO_NODELOCKED, MAC_BIBA_EXTATTR_NAMESPACE,
	    MAC_BIBA_EXTATTR_NAME, buflen, (char *) &mb_temp, curthread);
	if (error == 0)
		FUNC1(source, dest);
	return (error);
}