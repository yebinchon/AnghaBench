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
typedef  int /*<<< orphan*/  uid_t ;
struct vop_setacl_args {scalar_t__ a_type; int /*<<< orphan*/  a_td; int /*<<< orphan*/  a_aclp; int /*<<< orphan*/  a_cred; int /*<<< orphan*/  a_vp; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 scalar_t__ ACL_TYPE_NFS4 ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int NFSERR_STALE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct vop_setacl_args *ap)
{
	int error;

	if (ap->a_type != ACL_TYPE_NFS4)
		return (EOPNOTSUPP);
	error = FUNC1(ap->a_vp, ap->a_cred, ap->a_td, ap->a_aclp,
	    NULL);
	if (error > NFSERR_STALE) {
		(void) FUNC0(ap->a_td, error, (uid_t)0, (gid_t)0);
		error = EPERM;
	}
	return (error);
}