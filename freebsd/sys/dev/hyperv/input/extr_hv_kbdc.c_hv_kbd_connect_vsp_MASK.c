#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct vmbus_xact {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  hs_chan; int /*<<< orphan*/  hs_xact_ctx; } ;
typedef  TYPE_2__ hv_kbd_sc ;
struct TYPE_12__ {int status; } ;
typedef  TYPE_3__ hv_kbd_proto_resp ;
struct TYPE_10__ {int /*<<< orphan*/  type; } ;
struct TYPE_13__ {int /*<<< orphan*/  ver; TYPE_1__ hdr; } ;
typedef  TYPE_4__ hv_kbd_proto_req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int ENODEV ; 
 int HV_KBD_PROTO_ACCEPTED ; 
 int /*<<< orphan*/  HV_KBD_PROTO_REQUEST ; 
 size_t HV_KBD_PROTO_RESP_SZ ; 
 int /*<<< orphan*/  HV_KBD_VER ; 
 int /*<<< orphan*/  VMBUS_CHANPKT_FLAG_RC ; 
 int /*<<< orphan*/  VMBUS_CHANPKT_TYPE_INBAND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,struct vmbus_xact*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vmbus_xact*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmbus_xact*) ; 
 struct vmbus_xact* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vmbus_xact*) ; 
 TYPE_4__* FUNC8 (struct vmbus_xact*) ; 

__attribute__((used)) static int
FUNC9(hv_kbd_sc *sc)
{
	int ret;
	size_t resplen;
	struct vmbus_xact *xact;
	hv_kbd_proto_req *req;
	const hv_kbd_proto_resp *resp;

	xact = FUNC6(sc->hs_xact_ctx, sizeof(*req));
	if (xact == NULL) {
		FUNC1(sc->dev, "no xact for kbd init");
		return (ENODEV);
	}
	req = FUNC8(xact);
	req->hdr.type = HV_KBD_PROTO_REQUEST;
	req->ver = HV_KBD_VER;

	FUNC4(xact);
	ret = FUNC2(sc->hs_chan,
		VMBUS_CHANPKT_TYPE_INBAND,
		VMBUS_CHANPKT_FLAG_RC,
		req, sizeof(hv_kbd_proto_req),
		(uint64_t)(uintptr_t)xact);
	if (ret) {
		FUNC1(sc->dev, "fail to send\n");
		FUNC5(xact);
		return (ret);
	}
	resp = FUNC3(sc->hs_chan, xact, &resplen, true);
	if (resplen < HV_KBD_PROTO_RESP_SZ) {
		FUNC1(sc->dev, "hv_kbd init communicate failed\n");
		ret = ENODEV;
		goto clean;
	}

	if (!(resp->status & HV_KBD_PROTO_ACCEPTED)) {
		FUNC1(sc->dev, "hv_kbd protocol request failed\n");
		ret = ENODEV;
	}
clean:
	FUNC7(xact);
	FUNC0(sc, "finish connect vsp\n");
	return (ret);
}