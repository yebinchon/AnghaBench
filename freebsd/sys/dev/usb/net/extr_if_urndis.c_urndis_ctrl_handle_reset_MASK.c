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
typedef  scalar_t__ uint32_t ;
struct urndis_softc {int /*<<< orphan*/  sc_filter; } ;
struct rndis_set_req {int dummy; } ;
struct rndis_reset_comp {scalar_t__ rm_status; scalar_t__ rm_len; scalar_t__ rm_adrreset; } ;
struct rndis_comp_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  msg_filter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  OID_GEN_CURRENT_PACKET_FILTER ; 
 scalar_t__ RNDIS_STATUS_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct urndis_softc*,int /*<<< orphan*/ ,struct rndis_set_req*,int) ; 

__attribute__((used)) static uint32_t
FUNC4(struct urndis_softc *sc,
    const struct rndis_comp_hdr *hdr)
{
	const struct rndis_reset_comp *msg;
	uint32_t rval;

	msg = (const struct rndis_reset_comp *)hdr;

	rval = FUNC2(msg->rm_status);

	FUNC0("len %u status 0x%x "
	    "adrreset %u\n",
	    FUNC2(msg->rm_len),
	    rval,
	    FUNC2(msg->rm_adrreset));

	if (rval != RNDIS_STATUS_SUCCESS) {
		FUNC0("reset failed 0x%x\n", rval);
		return (rval);
	}
	if (msg->rm_adrreset != 0) {
		struct {
			struct rndis_set_req hdr;
			uint32_t filter;
		} msg_filter;

		msg_filter.filter = FUNC1(sc->sc_filter);

		rval = FUNC3(sc, OID_GEN_CURRENT_PACKET_FILTER,
		    &msg_filter.hdr, sizeof(msg_filter));

		if (rval != RNDIS_STATUS_SUCCESS) {
			FUNC0("unable to reset data filters\n");
			return (rval);
		}
	}
	return (rval);
}