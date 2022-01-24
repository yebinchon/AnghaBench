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
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 struct mac_lomac* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lomac_enabled ; 
 scalar_t__ FUNC1 (struct mac_lomac*) ; 

__attribute__((used)) static int
FUNC2(struct ucred *cred, struct vnode *vp,
    struct label *vplabel)
{
	struct mac_lomac *subj;

	if (!lomac_enabled)
		return (0);

	subj = FUNC0(cred->cr_label);

	if (FUNC1(subj))
		return (EPERM);

	return (0);
}