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
struct vtnet_txq {int /*<<< orphan*/  vtntx_watchdog; struct virtqueue* vtntx_vq; } ;
struct virtqueue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VTNET_TX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct virtqueue*) ; 
 scalar_t__ FUNC2 (struct vtnet_txq*) ; 
 scalar_t__ FUNC3 (struct vtnet_txq*) ; 
 scalar_t__ FUNC4 (struct vtnet_txq*) ; 

__attribute__((used)) static int
FUNC5(struct vtnet_txq *txq)
{
	struct virtqueue *vq;

	vq = txq->vtntx_vq;

	txq->vtntx_watchdog = VTNET_TX_TIMEOUT;
	FUNC1(vq);

	if (FUNC3(txq) == 0)
		return (0);

	/*
	 * Drain frames that were completed since last checked. If this
	 * causes the queue to go above the threshold, the caller should
	 * continue transmitting.
	 */
	if (FUNC4(txq) != 0 && FUNC2(txq) == 0) {
		FUNC0(vq);
		return (1);
	}

	return (0);
}