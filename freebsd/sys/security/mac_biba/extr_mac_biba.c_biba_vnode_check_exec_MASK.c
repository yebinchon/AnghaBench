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
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;
struct image_params {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 struct mac_biba* FUNC0 (struct label*) ; 
 int FUNC1 (struct mac_biba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mac_biba*,struct mac_biba*) ; 
 int /*<<< orphan*/  biba_enabled ; 

__attribute__((used)) static int
FUNC3(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, struct image_params *imgp,
    struct label *execlabel)
{
	struct mac_biba *subj, *obj, *exec;
	int error;

	if (execlabel != NULL) {
		/*
		 * We currently don't permit labels to be changed at
		 * exec-time as part of Biba, so disallow non-NULL Biba label
		 * elements in the execlabel.
		 */
		exec = FUNC0(execlabel);
		error = FUNC1(exec, 0);
		if (error)
			return (error);
	}

	if (!biba_enabled)
		return (0);

	subj = FUNC0(cred->cr_label);
	obj = FUNC0(vplabel);

	if (!FUNC2(obj, subj))
		return (EACCES);

	return (0);
}