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
struct mac_lomac {int ml_flags; int /*<<< orphan*/  ml_single; int /*<<< orphan*/  ml_auxsingle; } ;
struct label {int dummy; } ;
struct image_params {int dummy; } ;

/* Variables and functions */
 int MAC_LOMAC_FLAG_AUX ; 
 struct mac_lomac* FUNC0 (struct label*) ; 
 scalar_t__ FUNC1 (struct mac_lomac*,struct mac_lomac*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mac_lomac*,struct mac_lomac*) ; 
 int /*<<< orphan*/  lomac_enabled ; 
 int /*<<< orphan*/  revocation_enabled ; 

__attribute__((used)) static int
FUNC4(struct ucred *old, struct vnode *vp,
    struct label *vplabel, struct label *interpvplabel,
    struct image_params *imgp, struct label *execlabel)
{
	struct mac_lomac *subj, *obj, *robj;

	if (!lomac_enabled || !revocation_enabled)
		return (0);

	subj = FUNC0(old->cr_label);
	obj = FUNC0(vplabel);
	robj = interpvplabel != NULL ? FUNC0(interpvplabel) : obj;

	return ((robj->ml_flags & MAC_LOMAC_FLAG_AUX &&
	    !FUNC2(&robj->ml_auxsingle, &subj->ml_single)
	    && FUNC1(robj, subj)) ||
	    !FUNC3(obj, subj));
}