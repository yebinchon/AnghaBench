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
typedef  scalar_t__ uint16_t ;
struct urndis_softc {int dummy; } ;
struct rndis_set_req {void* rm_devicevchdl; void* rm_infobufoffset; void* rm_infobuflen; void* rm_oid; void* rm_rid; void* rm_len; void* rm_type; } ;
struct rndis_comp_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ REMOTE_NDIS_SET_MSG ; 
 scalar_t__ RNDIS_HEADER_OFFSET ; 
 scalar_t__ RNDIS_STATUS_FAILURE ; 
 scalar_t__ RNDIS_STATUS_SUCCESS ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (struct urndis_softc*,struct rndis_comp_hdr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rndis_comp_hdr* FUNC4 (struct urndis_softc*) ; 
 scalar_t__ FUNC5 (struct urndis_softc*,struct rndis_set_req*,scalar_t__) ; 

__attribute__((used)) static uint32_t
FUNC6(struct urndis_softc *sc, uint32_t oid,
    struct rndis_set_req *msg, uint16_t len)
{
	struct rndis_comp_hdr *hdr;
	uint32_t datalen, rval;

	msg->rm_type = FUNC1(REMOTE_NDIS_SET_MSG);
	msg->rm_len = FUNC1(len);
	msg->rm_rid = 0;		/* XXX */
	msg->rm_oid = FUNC1(oid);
	datalen = len - sizeof(*msg);
	msg->rm_infobuflen = FUNC1(datalen);
	if (datalen != 0) {
		msg->rm_infobufoffset = FUNC1(sizeof(*msg) -
		    RNDIS_HEADER_OFFSET);
	} else {
		msg->rm_infobufoffset = 0;
	}
	msg->rm_devicevchdl = 0;

	FUNC0("type %u len %u rid %u oid 0x%x "
	    "infobuflen %u infobufoffset %u devicevchdl %u\n",
	    FUNC2(msg->rm_type),
	    FUNC2(msg->rm_len),
	    FUNC2(msg->rm_rid),
	    FUNC2(msg->rm_oid),
	    FUNC2(msg->rm_infobuflen),
	    FUNC2(msg->rm_infobufoffset),
	    FUNC2(msg->rm_devicevchdl));

	rval = FUNC5(sc, msg, len);

	if (rval != RNDIS_STATUS_SUCCESS) {
		FUNC0("set failed\n");
		return (rval);
	}
	if ((hdr = FUNC4(sc)) == NULL) {
		FUNC0("unable to get set response\n");
		return (RNDIS_STATUS_FAILURE);
	}
	rval = FUNC3(sc, hdr, NULL, NULL);
	if (rval != RNDIS_STATUS_SUCCESS)
		FUNC0("set failed 0x%x\n", rval);

	return (rval);
}