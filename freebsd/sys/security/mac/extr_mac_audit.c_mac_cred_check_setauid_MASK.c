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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cred_check_setauid ; 

int
FUNC2(struct ucred *cred, uid_t auid)
{
	int error;

	FUNC1(cred_check_setauid, cred, auid);
	FUNC0(cred_check_setauid, error, cred, auid);

	return (error);
}