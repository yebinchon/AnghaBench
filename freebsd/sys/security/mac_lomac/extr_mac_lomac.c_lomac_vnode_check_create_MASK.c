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
struct vattr {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct mac_lomac {int ml_flags; int /*<<< orphan*/  ml_auxsingle; int /*<<< orphan*/  ml_single; } ;
struct label {int dummy; } ;
struct componentname {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int MAC_LOMAC_FLAG_AUX ; 
 struct mac_lomac* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lomac_enabled ; 
 int /*<<< orphan*/  FUNC2 (struct mac_lomac*,struct mac_lomac*) ; 

__attribute__((used)) static int
FUNC3(struct ucred *cred, struct vnode *dvp,
    struct label *dvplabel, struct componentname *cnp, struct vattr *vap)
{
	struct mac_lomac *subj, *obj;

	if (!lomac_enabled)
		return (0);

	subj = FUNC0(cred->cr_label);
	obj = FUNC0(dvplabel);

	if (!FUNC2(subj, obj))
		return (EACCES);
	if (obj->ml_flags & MAC_LOMAC_FLAG_AUX &&
	    !FUNC1(&subj->ml_single, &obj->ml_auxsingle))
		return (EACCES);

	return (0);
}