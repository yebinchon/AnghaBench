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
struct ucred {int /*<<< orphan*/  cr_label; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 struct mac_biba* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  biba_enabled ; 
 int FUNC1 (struct mac_biba*) ; 

__attribute__((used)) static int
FUNC2(struct ucred *cred, struct vnode *vp,
    struct label *label)
{
	struct mac_biba *subj;
	int error;

	if (!biba_enabled)
		return (0);

	subj = FUNC0(cred->cr_label);

	error = FUNC1(subj);
	if (error)
		return (error);

	return (0);
}