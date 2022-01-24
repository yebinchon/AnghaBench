#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx5e_sq {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int csum_flags; TYPE_1__* snd_tag; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ifnet {int dummy; } ;
struct TYPE_3__ {struct ifnet* ifp; } ;

/* Variables and functions */
 int CSUM_SND_TAG ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 struct mlx5e_sq* FUNC2 (struct ifnet*,struct mbuf*) ; 
 struct mlx5e_sq* FUNC3 (struct ifnet*,struct mbuf*) ; 
 int FUNC4 (struct ifnet*,struct mlx5e_sq*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct ifnet *ifp, struct mbuf *mb)
{
	struct mlx5e_sq *sq;
	int ret;

	if (mb->m_pkthdr.csum_flags & CSUM_SND_TAG) {
		FUNC0(mb->m_pkthdr.snd_tag->ifp == ifp);
		sq = FUNC3(ifp, mb);
		if (FUNC7(sq == NULL)) {
			goto select_queue;
		}
	} else {
select_queue:
		sq = FUNC2(ifp, mb);
		if (FUNC7(sq == NULL)) {
			/* Free mbuf */
			FUNC1(mb);

			/* Invalid send queue */
			return (ENXIO);
		}
	}

	FUNC5(&sq->lock);
	ret = FUNC4(ifp, sq, mb);
	FUNC6(&sq->lock);

	return (ret);
}