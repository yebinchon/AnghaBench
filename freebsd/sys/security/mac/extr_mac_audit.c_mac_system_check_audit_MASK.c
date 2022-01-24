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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ucred*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,void*,int) ; 
 int /*<<< orphan*/  system_check_audit ; 

int
FUNC2(struct ucred *cred, void *record, int length)
{
	int error;

	FUNC1(system_check_audit, cred, record, length);
	FUNC0(system_check_audit, error, cred, record, length);

	return (error);
}