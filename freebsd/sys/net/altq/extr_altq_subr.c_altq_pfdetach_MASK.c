#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pf_altq {scalar_t__ altq_disc; int /*<<< orphan*/  ifname; } ;
struct TYPE_4__ {scalar_t__ altq_disc; } ;
struct ifnet {TYPE_1__ if_snd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 struct ifnet* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int
FUNC6(struct pf_altq *a)
{
	struct ifnet *ifp;
	int s, error = 0;

	if ((ifp = FUNC3(a->ifname)) == NULL)
		return (EINVAL);

	/* if this discipline is no longer referenced, just return */
	/* read unlocked from if_snd */
	if (a->altq_disc == NULL || a->altq_disc != ifp->if_snd.altq_disc)
		return (0);

	s = FUNC4();
	/* read unlocked from if_snd, _disable and _detach take care */
	if (FUNC0(&ifp->if_snd))
		error = FUNC2(&ifp->if_snd);
	if (error == 0)
		error = FUNC1(&ifp->if_snd);
	FUNC5(s);

	return (error);
}