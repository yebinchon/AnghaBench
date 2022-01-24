#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sfxge_tx_dpl {uintptr_t std_put; unsigned int std_put_max; } ;
struct sfxge_txq {int /*<<< orphan*/  put_overflow; struct sfxge_tx_dpl dpl; } ;
struct TYPE_2__ {unsigned int csum_data; } ;
struct mbuf {int /*<<< orphan*/ * m_nextpkt; TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_txq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (uintptr_t volatile*,uintptr_t,uintptr_t) ; 

__attribute__((used)) static int
FUNC4(struct sfxge_txq *txq, struct mbuf *mbuf)
{
	struct sfxge_tx_dpl *stdp;
	volatile uintptr_t *putp;
	uintptr_t old;
	uintptr_t new;
	unsigned int put_count;

	FUNC0(mbuf->m_nextpkt == NULL, ("mbuf->m_nextpkt != NULL"));

	FUNC1(txq);

	stdp = &txq->dpl;
	putp = &stdp->std_put;
	new = (uintptr_t)mbuf;

	do {
		old = *putp;
		if (old != 0) {
			struct mbuf *mp = (struct mbuf *)old;
			put_count = mp->m_pkthdr.csum_data;
		} else
			put_count = 0;
		if (put_count >= stdp->std_put_max) {
			FUNC2(&txq->put_overflow, 1);
			return (ENOBUFS);
		}
		mbuf->m_pkthdr.csum_data = put_count + 1;
		mbuf->m_nextpkt = (void *)old;
	} while (FUNC3(putp, old, new) == 0);

	return (0);
}