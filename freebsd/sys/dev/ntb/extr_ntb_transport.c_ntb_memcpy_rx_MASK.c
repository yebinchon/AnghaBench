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
struct ntb_transport_qp {int dummy; } ;
struct ntb_queue_entry {unsigned int len; int /*<<< orphan*/ * buf; struct ifnet* cb_data; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned int ENOMEM ; 
 int /*<<< orphan*/  KTR_NTB ; 
 scalar_t__ FUNC1 (void*,unsigned int,int /*<<< orphan*/ ,struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ntb_transport_qp*,struct ntb_queue_entry*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(struct ntb_transport_qp *qp, struct ntb_queue_entry *entry,
    void *offset)
{
	struct ifnet *ifp = entry->cb_data;
	unsigned int len = entry->len;

	FUNC0(KTR_NTB, "RX: copying %d bytes from offset %p", len, offset);

	entry->buf = (void *)FUNC1(offset, len, 0, ifp, NULL);
	if (entry->buf == NULL)
		entry->len = -ENOMEM;

	/* Ensure that the data is globally visible before clearing the flag */
	FUNC3();

	FUNC0(KTR_NTB, "RX: copied entry %p to mbuf %p.", entry, entry->buf);
	FUNC2(qp, entry);
}