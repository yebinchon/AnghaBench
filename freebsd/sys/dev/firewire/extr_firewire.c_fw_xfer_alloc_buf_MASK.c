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
struct malloc_type {int dummy; } ;
struct TYPE_4__ {int pay_len; int /*<<< orphan*/ * payload; } ;
struct TYPE_3__ {int pay_len; int /*<<< orphan*/ * payload; } ;
struct fw_xfer {TYPE_2__ send; TYPE_1__ recv; } ;

/* Variables and functions */
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct malloc_type*) ; 
 struct fw_xfer* FUNC1 (struct malloc_type*) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_xfer*) ; 
 void* FUNC3 (int,struct malloc_type*,int) ; 

struct fw_xfer *
FUNC4(struct malloc_type *type, int send_len, int recv_len)
{
	struct fw_xfer *xfer;

	xfer = FUNC1(type);
	if (xfer == NULL)
		return (NULL);
	xfer->send.pay_len = send_len;
	xfer->recv.pay_len = recv_len;
	if (send_len > 0) {
		xfer->send.payload = FUNC3(send_len, type, M_NOWAIT | M_ZERO);
		if (xfer->send.payload == NULL) {
			FUNC2(xfer);
			return (NULL);
		}
	}
	if (recv_len > 0) {
		xfer->recv.payload = FUNC3(recv_len, type, M_NOWAIT);
		if (xfer->recv.payload == NULL) {
			if (xfer->send.payload != NULL)
				FUNC0(xfer->send.payload, type);
			FUNC2(xfer);
			return (NULL);
		}
	}
	return (xfer);
}