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
typedef  int /*<<< orphan*/  uint32_t ;
struct udbp_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_packets_out; int /*<<< orphan*/  sc_packets_in; } ;
struct ngudbpstat {int /*<<< orphan*/  packets_out; int /*<<< orphan*/  packets_in; } ;
struct TYPE_2__ {int typecookie; int arglen; int /*<<< orphan*/  cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
#define  NGM_UDBP_COOKIE 130 
#define  NGM_UDBP_GET_STATUS 129 
#define  NGM_UDBP_SET_FLAG 128 
 int /*<<< orphan*/  FUNC2 (struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC3 (struct ng_mesg*,struct ng_mesg*,int,int /*<<< orphan*/ ) ; 
 struct udbp_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(node_p node, item_p item, hook_p lasthook)
{
	struct udbp_softc *sc = FUNC4(node);
	struct ng_mesg *resp = NULL;
	int error = 0;
	struct ng_mesg *msg;

	FUNC1(item, msg);
	/* Deal with message according to cookie and command */
	switch (msg->header.typecookie) {
	case NGM_UDBP_COOKIE:
		switch (msg->header.cmd) {
		case NGM_UDBP_GET_STATUS:
			{
				struct ngudbpstat *stats;

				FUNC3(resp, msg, sizeof(*stats), M_NOWAIT);
				if (!resp) {
					error = ENOMEM;
					break;
				}
				stats = (struct ngudbpstat *)resp->data;
				FUNC6(&sc->sc_mtx);
				stats->packets_in = sc->sc_packets_in;
				stats->packets_out = sc->sc_packets_out;
				FUNC7(&sc->sc_mtx);
				break;
			}
		case NGM_UDBP_SET_FLAG:
			if (msg->header.arglen != sizeof(uint32_t)) {
				error = EINVAL;
				break;
			}
			FUNC0("flags = 0x%08x\n",
			    *((uint32_t *)msg->data));
			break;
		default:
			error = EINVAL;	/* unknown command */
			break;
		}
		break;
	default:
		error = EINVAL;		/* unknown cookie type */
		break;
	}

	/* Take care of synchronous response, if any */
	FUNC5(error, node, item, resp);
	FUNC2(msg);
	return (error);
}