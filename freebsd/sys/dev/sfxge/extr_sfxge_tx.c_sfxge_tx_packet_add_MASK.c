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
struct sfxge_txq {int /*<<< orphan*/  netdown_drops; int /*<<< orphan*/  sc; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_txq*) ; 
 scalar_t__ FUNC2 (struct sfxge_txq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct sfxge_txq*,struct mbuf*) ; 
 int FUNC5 (struct sfxge_txq*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct sfxge_txq*) ; 
 int /*<<< orphan*/  FUNC7 (struct sfxge_txq*) ; 

__attribute__((used)) static int
FUNC8(struct sfxge_txq *txq, struct mbuf *m)
{
	int rc;

	if (!FUNC0(txq->sc)) {
		FUNC3(&txq->netdown_drops, 1);
		return (ENETDOWN);
	}

	/*
	 * Try to grab the txq lock.  If we are able to get the lock,
	 * the packet will be appended to the "get list" of the deferred
	 * packet list.  Otherwise, it will be pushed on the "put list".
	 */
	if (FUNC2(txq)) {
		/* First swizzle put-list to get-list to keep order */
		FUNC7(txq);

		rc = FUNC4(txq, m);

		/* Try to service the list. */
		FUNC6(txq);
		/* Lock has been dropped. */
	} else {
		rc = FUNC5(txq, m);

		/*
		 * Try to grab the lock again.
		 *
		 * If we are able to get the lock, we need to process
		 * the deferred packet list.  If we are not able to get
		 * the lock, another thread is processing the list.
		 */
		if ((rc == 0) && FUNC2(txq)) {
			FUNC6(txq);
			/* Lock has been dropped. */
		}
	}

	FUNC1(txq);

	return (rc);
}