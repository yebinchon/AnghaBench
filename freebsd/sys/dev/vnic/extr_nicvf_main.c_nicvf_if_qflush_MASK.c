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
struct snd_queue {int /*<<< orphan*/  br; } ;
struct queue_set {size_t sq_cnt; struct snd_queue* sq; } ;
struct nicvf {struct queue_set* qs; } ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_queue*) ; 
 struct mbuf* FUNC2 (int /*<<< orphan*/ ) ; 
 struct nicvf* FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 

__attribute__((used)) static void
FUNC6(struct ifnet *ifp)
{
	struct nicvf *nic;
	struct queue_set *qs;
	struct snd_queue *sq;
	struct mbuf *mbuf;
	size_t idx;

	nic = FUNC3(ifp);
	qs = nic->qs;

	for (idx = 0; idx < qs->sq_cnt; idx++) {
		sq = &qs->sq[idx];
		FUNC0(sq);
		while ((mbuf = FUNC2(sq->br)) != NULL)
			FUNC5(mbuf);
		FUNC1(sq);
	}
	FUNC4(ifp);
}