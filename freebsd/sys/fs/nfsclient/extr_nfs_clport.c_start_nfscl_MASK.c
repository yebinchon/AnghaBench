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
struct thread {int dummy; } ;
struct nfsclclient {TYPE_1__* nfsc_renewthread; } ;
struct TYPE_2__ {int /*<<< orphan*/  p_threads; } ;

/* Variables and functions */
 struct thread* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsclclient*,struct thread*) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct nfsclclient *clp;
	struct thread *td;

	clp = (struct nfsclclient *)arg;
	td = FUNC0(&clp->nfsc_renewthread->p_threads);
	FUNC2(clp, td);
	FUNC1(0);
}