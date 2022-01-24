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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/  hv_paddr; } ;
struct TYPE_7__ {int /*<<< orphan*/  hv_paddr; } ;
struct TYPE_6__ {int /*<<< orphan*/  hv_paddr; } ;
struct vmbus_softc {TYPE_4__ vmbus_mnf2_dma; TYPE_3__ vmbus_mnf1_dma; TYPE_2__ vmbus_evtflags_dma; } ;
struct vmbus_msghc {int dummy; } ;
struct vmbus_message {scalar_t__ msg_data; } ;
struct vmbus_chanmsg_connect_resp {int chm_done; } ;
struct TYPE_5__ {int /*<<< orphan*/  chm_type; } ;
struct vmbus_chanmsg_connect {int /*<<< orphan*/  chm_mnf2; int /*<<< orphan*/  chm_mnf1; int /*<<< orphan*/  chm_evtflags; int /*<<< orphan*/  chm_ver; TYPE_1__ chm_hdr; } ;

/* Variables and functions */
 int ENXIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  VMBUS_CHANMSG_TYPE_CONNECT ; 
 struct vmbus_chanmsg_connect* FUNC0 (struct vmbus_msghc*) ; 
 int FUNC1 (struct vmbus_softc*,struct vmbus_msghc*) ; 
 struct vmbus_msghc* FUNC2 (struct vmbus_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vmbus_softc*,struct vmbus_msghc*) ; 
 struct vmbus_message* FUNC4 (struct vmbus_softc*,struct vmbus_msghc*) ; 

__attribute__((used)) static int
FUNC5(struct vmbus_softc *sc, uint32_t version)
{
	struct vmbus_chanmsg_connect *req;
	const struct vmbus_message *msg;
	struct vmbus_msghc *mh;
	int error, done = 0;

	mh = FUNC2(sc, sizeof(*req));
	if (mh == NULL)
		return ENXIO;

	req = FUNC0(mh);
	req->chm_hdr.chm_type = VMBUS_CHANMSG_TYPE_CONNECT;
	req->chm_ver = version;
	req->chm_evtflags = sc->vmbus_evtflags_dma.hv_paddr;
	req->chm_mnf1 = sc->vmbus_mnf1_dma.hv_paddr;
	req->chm_mnf2 = sc->vmbus_mnf2_dma.hv_paddr;

	error = FUNC1(sc, mh);
	if (error) {
		FUNC3(sc, mh);
		return error;
	}

	msg = FUNC4(sc, mh);
	done = ((const struct vmbus_chanmsg_connect_resp *)
	    msg->msg_data)->chm_done;

	FUNC3(sc, mh);

	return (done ? 0 : EOPNOTSUPP);
}