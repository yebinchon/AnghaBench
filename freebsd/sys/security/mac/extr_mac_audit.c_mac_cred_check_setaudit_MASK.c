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
struct auditinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ucred*,struct auditinfo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,struct auditinfo*) ; 
 int /*<<< orphan*/  cred_check_setaudit ; 

int
FUNC2(struct ucred *cred, struct auditinfo *ai)
{
	int error;

	FUNC1(cred_check_setaudit, cred, ai);
	FUNC0(cred_check_setaudit, error, cred, ai);

	return (error);
}