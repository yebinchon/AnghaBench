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
struct vtnet_txq {struct virtqueue* vtntx_vq; } ;
struct virtqueue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VQ_POSTPONE_LONG ; 
 int FUNC0 (struct virtqueue*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct vtnet_txq*) ; 

__attribute__((used)) static int
FUNC2(struct vtnet_txq *txq)
{
	struct virtqueue *vq;

	vq = txq->vtntx_vq;

	if (FUNC1(txq) != 0)
		return (FUNC0(vq, VQ_POSTPONE_LONG));

	/*
	 * The free count is above our threshold. Keep the Tx interrupt
	 * disabled until the queue is fuller.
	 */
	return (0);
}