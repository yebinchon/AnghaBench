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
struct ucred {int /*<<< orphan*/  cr_label; } ;
struct sysctl_req {int dummy; } ;
struct sysctl_oid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_CRED ; 
 int /*<<< orphan*/  system_check_sysctl ; 

__attribute__((used)) static int
FUNC2(struct ucred *cred, struct sysctl_oid *oidp,
    void *arg1, int arg2, struct sysctl_req *req)
{

	FUNC1(cred->cr_label, MAGIC_CRED);
	FUNC0(system_check_sysctl);

	return (0);
}