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
struct mbuf {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 

__attribute__((used)) static void
FUNC4(struct ifnet *ifp)
{
	struct mbuf *m;

	for (;;) {
		FUNC0(&ifp->if_snd);
		FUNC2(&ifp->if_snd, m);
		FUNC1(&ifp->if_snd);

		if (m == NULL)
			return;
		else
			FUNC3(m);
	}
}