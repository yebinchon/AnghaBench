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

/* Variables and functions */
 int EACCES ; 
 struct mac_biba* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  biba_enabled ; 
 int /*<<< orphan*/  FUNC1 (struct mac_biba*) ; 
 int FUNC2 (struct mac_biba*) ; 

__attribute__((used)) static int
FUNC3(struct ucred *cred, struct vnode *vp,
    struct label *vplabel)
{
	struct mac_biba *subj, *obj;
	int error;

	if (!biba_enabled)
		return (0);

	subj = FUNC0(cred->cr_label);

	error = FUNC2(subj);
	if (error)
		return (error);

	obj = FUNC0(vplabel);
	if (!FUNC1(obj))
		return (EACCES);

	return (0);
}