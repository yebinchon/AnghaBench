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
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 struct mac_mls* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_mls*,struct mac_mls*) ; 
 int /*<<< orphan*/  mls_enabled ; 

__attribute__((used)) static int
FUNC2(struct ucred *active_cred, struct ucred *file_cred,
    struct vnode *vp, struct label *vplabel)
{
	struct mac_mls *subj, *obj;

	if (!mls_enabled)
		return (0);

	subj = FUNC0(active_cred->cr_label);
	obj = FUNC0(vplabel);

	if (!FUNC1(subj, obj))
		return (EACCES);

	return (0);
}