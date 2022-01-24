#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ucred {TYPE_1__* cr_prison; } ;
struct TYPE_2__ {int /*<<< orphan*/  pr_mtx; int /*<<< orphan*/  pr_domainname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 

void
FUNC3(struct ucred *cred, char *buf, size_t size)
{

	FUNC0(&cred->cr_prison->pr_mtx);
	FUNC2(buf, cred->cr_prison->pr_domainname, size);
	FUNC1(&cred->cr_prison->pr_mtx);
}