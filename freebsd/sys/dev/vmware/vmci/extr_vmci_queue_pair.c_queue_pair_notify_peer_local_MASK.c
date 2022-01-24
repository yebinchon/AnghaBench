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
typedef  int /*<<< orphan*/  vmci_id ;
struct vmci_handle {int dummy; } ;
struct vmci_event_payload_qp {struct vmci_handle handle; int /*<<< orphan*/  peer_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  event; } ;
struct TYPE_3__ {int payload_size; void* src; void* dst; } ;
struct vmci_event_msg {TYPE_2__ event_data; TYPE_1__ hdr; } ;
struct vmci_datagram {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMCI_CONTEXT_RESOURCE_ID ; 
 int /*<<< orphan*/  VMCI_EVENT_HANDLER ; 
 int /*<<< orphan*/  VMCI_EVENT_QP_PEER_ATTACH ; 
 int /*<<< orphan*/  VMCI_EVENT_QP_PEER_DETACH ; 
 int /*<<< orphan*/  VMCI_HYPERVISOR_CONTEXT_ID ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vmci_datagram*) ; 
 struct vmci_event_payload_qp* FUNC2 (struct vmci_event_msg*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int
FUNC4(bool attach, struct vmci_handle handle)
{
	struct vmci_event_msg *e_msg;
	struct vmci_event_payload_qp *e_payload;
	/* buf is only 48 bytes. */
	vmci_id context_id;
	context_id = FUNC3();
	char buf[sizeof(*e_msg) + sizeof(*e_payload)];

	e_msg = (struct vmci_event_msg *)buf;
	e_payload = FUNC2(e_msg);

	e_msg->hdr.dst = FUNC0(context_id, VMCI_EVENT_HANDLER);
	e_msg->hdr.src = FUNC0(VMCI_HYPERVISOR_CONTEXT_ID,
	    VMCI_CONTEXT_RESOURCE_ID);
	e_msg->hdr.payload_size = sizeof(*e_msg) + sizeof(*e_payload) -
	    sizeof(e_msg->hdr);
	e_msg->event_data.event = attach ? VMCI_EVENT_QP_PEER_ATTACH :
	    VMCI_EVENT_QP_PEER_DETACH;
	e_payload->peer_id = context_id;
	e_payload->handle = handle;

	return (FUNC1((struct vmci_datagram *)e_msg));
}