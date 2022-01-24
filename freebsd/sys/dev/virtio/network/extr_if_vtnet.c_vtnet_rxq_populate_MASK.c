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
struct vtnet_rxq {struct virtqueue* vtnrx_vq; } ;
struct virtqueue {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct virtqueue*) ; 
 int FUNC2 (struct vtnet_rxq*) ; 
 int FUNC3 (struct vtnet_rxq*) ; 

__attribute__((used)) static int
FUNC4(struct vtnet_rxq *rxq)
{
	struct virtqueue *vq;
	int nbufs, error;

#ifdef DEV_NETMAP
	error = vtnet_netmap_rxq_populate(rxq);
	if (error >= 0)
		return (error);
#endif  /* DEV_NETMAP */

	vq = rxq->vtnrx_vq;
	error = ENOSPC;

	for (nbufs = 0; !FUNC0(vq); nbufs++) {
		error = FUNC3(rxq);
		if (error)
			break;
	}

	if (nbufs > 0) {
		FUNC1(vq);
		/*
		 * EMSGSIZE signifies the virtqueue did not have enough
		 * entries available to hold the last mbuf. This is not
		 * an error.
		 */
		if (error == EMSGSIZE)
			error = 0;
	}

	return (error);
}