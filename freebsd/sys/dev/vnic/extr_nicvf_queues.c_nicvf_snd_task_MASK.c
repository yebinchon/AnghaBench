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
struct snd_queue {int /*<<< orphan*/  snd_task; int /*<<< orphan*/  snd_taskq; struct nicvf* nic; } ;
struct nicvf {int /*<<< orphan*/  link_up; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct snd_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_queue*) ; 
 int FUNC2 (struct ifnet*) ; 
 int FUNC3 (struct snd_queue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *arg, int pending)
{
	struct snd_queue *sq = (struct snd_queue *)arg;
	struct nicvf *nic;
	struct ifnet *ifp;
	int err;

	nic = sq->nic;
	ifp = nic->ifp;

	/*
	 * Skip sending anything if the driver is not running,
	 * SQ full or link is down.
	 */
	if (((FUNC2(ifp) & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING) || !nic->link_up)
		return;

	FUNC0(sq);
	err = FUNC3(sq);
	FUNC1(sq);
	/* Try again */
	if (err != 0)
		FUNC4(sq->snd_taskq, &sq->snd_task);
}