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
struct snd_queue {int /*<<< orphan*/  br; struct nicvf* nic; } ;
struct nicvf {struct ifnet* ifp; } ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC3 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,struct mbuf*) ; 
 int FUNC5 (struct snd_queue*,struct mbuf**) ; 

int
FUNC6(struct snd_queue *sq)
{
	struct nicvf *nic;
	struct ifnet *ifp;
	struct mbuf *next;
	int err;

	FUNC1(sq);

	nic = sq->nic;
	ifp = nic->ifp;
	err = 0;

	while ((next = FUNC3(ifp, sq->br)) != NULL) {
		/* Send a copy of the frame to the BPF listener */
		FUNC0(ifp, next);

		err = FUNC5(sq, &next);
		if (err != 0) {
			if (next == NULL)
				FUNC2(ifp, sq->br);
			else
				FUNC4(ifp, sq->br, next);

			break;
		}
		FUNC2(ifp, sq->br);
	}
	return (err);
}