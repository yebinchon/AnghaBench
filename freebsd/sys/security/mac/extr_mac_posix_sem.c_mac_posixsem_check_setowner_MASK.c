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
struct ucred {int dummy; } ;
struct ksem {int /*<<< orphan*/  ks_label; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ucred*,struct ksem*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,struct ksem*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  posixsem_check_setowner ; 

int
FUNC2(struct ucred *cred, struct ksem *ks, uid_t uid,
    gid_t gid)
{
	int error;

	FUNC1(posixsem_check_setowner, cred, ks,
	    ks->ks_label, uid, gid);
	FUNC0(posixsem_check_setowner, error, cred, ks,
	    uid, gid);

	return (error);
}