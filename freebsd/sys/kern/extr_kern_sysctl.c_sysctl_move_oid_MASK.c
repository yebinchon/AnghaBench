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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int /*<<< orphan*/  oid_number; struct sysctl_oid_list* oid_parent; int /*<<< orphan*/  oid_name; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct sysctl_oid* FUNC2 (int /*<<< orphan*/ ,struct sysctl_oid_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC4 (struct sysctl_oid*) ; 

int
FUNC5(struct sysctl_oid *oid, struct sysctl_oid_list *parent)
{
	struct sysctl_oid *oidp;

	FUNC0();
	if (oid->oid_parent == parent) {
		FUNC1();
		return (0);
	}
	oidp = FUNC2(oid->oid_name, parent);
	if (oidp != NULL) {
		FUNC1();
		return (EEXIST);
	}
	FUNC4(oid);
	oid->oid_parent = parent;
	oid->oid_number = OID_AUTO;
	FUNC3(oid);
	FUNC1();
	return (0);
}