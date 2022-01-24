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
struct ucred {int dummy; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ucred*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cred_check_setgroups ; 

int
FUNC2(struct ucred *cred, int ngroups, gid_t *gidset)
{
	int error;

	FUNC1(cred_check_setgroups, cred, ngroups, gidset);
	FUNC0(cred_check_setgroups, error, cred, ngroups, gidset);

	return (error);
}