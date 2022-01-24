#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {scalar_t__ payload_size; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct vmci_queue_pair_alloc_msg {int flags; int num_ppns; int /*<<< orphan*/  consume_size; int /*<<< orphan*/  produce_size; int /*<<< orphan*/  peer; int /*<<< orphan*/  handle; TYPE_1__ hdr; } ;
struct vmci_datagram {int dummy; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  consume_size; int /*<<< orphan*/  produce_size; int /*<<< orphan*/  peer; int /*<<< orphan*/  handle; } ;
struct qp_guest_endpoint {int num_ppns; int /*<<< orphan*/  ppn_set; TYPE_2__ qp; } ;
typedef  int /*<<< orphan*/  PPN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  VMCI_ANON_SRC_HANDLE ; 
 scalar_t__ VMCI_DG_HEADERSIZE ; 
 int VMCI_ERROR_INVALID_ARGS ; 
 int VMCI_ERROR_NO_MEM ; 
 int /*<<< orphan*/  VMCI_HYPERVISOR_CONTEXT_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VMCI_MEMORY_NORMAL ; 
 int VMCI_QPFLAG_LOCAL ; 
 int /*<<< orphan*/  VMCI_QUEUEPAIR_ALLOC ; 
 int VMCI_SUCCESS ; 
 struct vmci_queue_pair_alloc_msg* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vmci_queue_pair_alloc_msg*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct vmci_datagram*) ; 

__attribute__((used)) static int
FUNC6(const struct qp_guest_endpoint *entry)
{
	struct vmci_queue_pair_alloc_msg *alloc_msg;
	size_t msg_size;
	int result;

	if (!entry || entry->num_ppns <= 2)
		return (VMCI_ERROR_INVALID_ARGS);

	FUNC0(!(entry->qp.flags & VMCI_QPFLAG_LOCAL));

	msg_size = sizeof(*alloc_msg) + (size_t)entry->num_ppns * sizeof(PPN);
	alloc_msg = FUNC2(msg_size, VMCI_MEMORY_NORMAL);
	if (!alloc_msg)
		return (VMCI_ERROR_NO_MEM);

	alloc_msg->hdr.dst = FUNC1(VMCI_HYPERVISOR_CONTEXT_ID,
	    VMCI_QUEUEPAIR_ALLOC);
	alloc_msg->hdr.src = VMCI_ANON_SRC_HANDLE;
	alloc_msg->hdr.payload_size = msg_size - VMCI_DG_HEADERSIZE;
	alloc_msg->handle = entry->qp.handle;
	alloc_msg->peer = entry->qp.peer;
	alloc_msg->flags = entry->qp.flags;
	alloc_msg->produce_size = entry->qp.produce_size;
	alloc_msg->consume_size = entry->qp.consume_size;
	alloc_msg->num_ppns = entry->num_ppns;
	result = FUNC4((uint8_t *)alloc_msg +
	    sizeof(*alloc_msg), &entry->ppn_set);
	if (result == VMCI_SUCCESS)
		result = FUNC5((struct vmci_datagram *)alloc_msg);
	FUNC3(alloc_msg, msg_size);

	return (result);
}