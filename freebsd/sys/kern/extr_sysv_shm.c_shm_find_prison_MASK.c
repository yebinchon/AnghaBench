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
struct ucred {struct prison* cr_prison; } ;
struct prison {int dummy; } ;

/* Variables and functions */
 struct prison* FUNC0 (struct prison*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct prison*) ; 
 int /*<<< orphan*/  FUNC2 (struct prison*) ; 
 int /*<<< orphan*/  shm_prison_slot ; 

__attribute__((used)) static struct prison *
FUNC3(struct ucred *cred)
{
	struct prison *pr, *rpr;

	pr = cred->cr_prison;
	FUNC1(pr);
	rpr = FUNC0(pr, shm_prison_slot);
	FUNC2(pr);
	return rpr;
}