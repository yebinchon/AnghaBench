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
struct shmid_kernel {TYPE_1__* cred; } ;
struct prison {int dummy; } ;
struct TYPE_2__ {struct prison* cr_prison; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct prison*,struct prison*) ; 

__attribute__((used)) static int
FUNC1(struct prison *rpr, struct shmid_kernel *shmseg)
{

	if (shmseg->cred == NULL ||
	    !(rpr == shmseg->cred->cr_prison ||
	      FUNC0(rpr, shmseg->cred->cr_prison)))
		return (EINVAL);
	return (0);
}