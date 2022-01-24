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
struct vtnet_rxq {int /*<<< orphan*/  vtnrx_vq; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 struct mbuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vtnet_rxq*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC2(struct vtnet_rxq *rxq, int nbufs)
{
	struct mbuf *m;

	while (--nbufs > 0) {
		m = FUNC0(rxq->vtnrx_vq, NULL);
		if (m == NULL)
			break;
		FUNC1(rxq, m);
	}
}