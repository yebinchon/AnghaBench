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
struct vmbus_softc {int /*<<< orphan*/  vmbus_dev; } ;
struct vmbus_msghc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  chm_type; } ;
struct vmbus_chanmsg_disconnect {TYPE_1__ chm_hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMBUS_CHANMSG_TYPE_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct vmbus_chanmsg_disconnect* FUNC1 (struct vmbus_msghc*) ; 
 int FUNC2 (struct vmbus_msghc*) ; 
 struct vmbus_msghc* FUNC3 (struct vmbus_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vmbus_softc*,struct vmbus_msghc*) ; 

__attribute__((used)) static void
FUNC5(struct vmbus_softc *sc)
{
	struct vmbus_chanmsg_disconnect *req;
	struct vmbus_msghc *mh;
	int error;

	mh = FUNC3(sc, sizeof(*req));
	if (mh == NULL) {
		FUNC0(sc->vmbus_dev,
		    "can not get msg hypercall for disconnect\n");
		return;
	}

	req = FUNC1(mh);
	req->chm_hdr.chm_type = VMBUS_CHANMSG_TYPE_DISCONNECT;

	error = FUNC2(mh);
	FUNC4(sc, mh);

	if (error) {
		FUNC0(sc->vmbus_dev,
		    "disconnect msg hypercall failed\n");
	}
}