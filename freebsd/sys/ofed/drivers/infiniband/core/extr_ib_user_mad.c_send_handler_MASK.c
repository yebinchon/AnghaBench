#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  status; } ;
struct TYPE_6__ {TYPE_1__ hdr; } ;
struct ib_umad_packet {TYPE_2__ mad; int /*<<< orphan*/  length; TYPE_4__* msg; } ;
struct ib_umad_file {int dummy; } ;
struct ib_mad_send_wc {scalar_t__ status; TYPE_3__* send_buf; } ;
struct ib_mad_agent {struct ib_umad_file* context; } ;
struct TYPE_8__ {int /*<<< orphan*/  ah; } ;
struct TYPE_7__ {struct ib_umad_packet** context; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  IB_MGMT_MAD_HDR ; 
 scalar_t__ IB_WC_RESP_TIMEOUT_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct ib_umad_file*,struct ib_umad_packet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_umad_packet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_umad_file*,struct ib_mad_agent*,struct ib_umad_packet*) ; 

__attribute__((used)) static void FUNC5(struct ib_mad_agent *agent,
			 struct ib_mad_send_wc *send_wc)
{
	struct ib_umad_file *file = agent->context;
	struct ib_umad_packet *packet = send_wc->send_buf->context[0];

	FUNC0(file, packet);
	FUNC1(packet->msg->ah);
	FUNC2(packet->msg);

	if (send_wc->status == IB_WC_RESP_TIMEOUT_ERR) {
		packet->length = IB_MGMT_MAD_HDR;
		packet->mad.hdr.status = ETIMEDOUT;
		if (!FUNC4(file, agent, packet))
			return;
	}
	FUNC3(packet);
}