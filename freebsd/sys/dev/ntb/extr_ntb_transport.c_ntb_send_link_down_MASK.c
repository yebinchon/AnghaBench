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
struct ntb_transport_qp {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  tx_free_q; int /*<<< orphan*/  ntb_tx_free_q_lock; int /*<<< orphan*/  link_is_up; } ;
struct ntb_queue_entry {int /*<<< orphan*/  flags; scalar_t__ len; int /*<<< orphan*/ * buf; int /*<<< orphan*/ * cb_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  NTBT_LINK_DOWN_FLAG ; 
 int NTB_LINK_DOWN_TIMEOUT ; 
 int hz ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ntb_queue_entry* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ntb_transport_qp*,struct ntb_queue_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct ntb_transport_qp*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(struct ntb_transport_qp *qp)
{
	struct ntb_queue_entry *entry;
	int i, rc;

	if (!qp->link_is_up)
		return;

	for (i = 0; i < NTB_LINK_DOWN_TIMEOUT; i++) {
		entry = FUNC2(&qp->ntb_tx_free_q_lock, &qp->tx_free_q);
		if (entry != NULL)
			break;
		FUNC5("NTB Wait for link down", hz / 10);
	}

	if (entry == NULL)
		return;

	entry->cb_data = NULL;
	entry->buf = NULL;
	entry->len = 0;
	entry->flags = NTBT_LINK_DOWN_FLAG;

	FUNC0(&qp->tx_lock);
	rc = FUNC3(qp, entry);
	FUNC1(&qp->tx_lock);
	if (rc != 0)
		FUNC6("ntb: Failed to send link down\n");

	FUNC4(qp);
}