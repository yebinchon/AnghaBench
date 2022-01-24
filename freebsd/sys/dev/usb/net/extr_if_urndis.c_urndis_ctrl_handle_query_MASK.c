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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct urndis_softc {int dummy; } ;
struct rndis_query_comp {int /*<<< orphan*/  rm_status; int /*<<< orphan*/  rm_infobuflen; int /*<<< orphan*/  rm_infobufoffset; int /*<<< orphan*/  rm_len; int /*<<< orphan*/  rm_rid; } ;
struct rndis_comp_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 scalar_t__ RNDIS_HEADER_OFFSET ; 
 int RNDIS_STATUS_FAILURE ; 
 scalar_t__ RNDIS_STATUS_SUCCESS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC2(struct urndis_softc *sc,
    const struct rndis_comp_hdr *hdr, const void **buf, uint16_t *bufsz)
{
	const struct rndis_query_comp *msg;
	uint64_t limit;

	msg = (const struct rndis_query_comp *)hdr;

	FUNC0("len %u rid %u status 0x%x "
	    "buflen %u bufoff %u\n",
	    FUNC1(msg->rm_len),
	    FUNC1(msg->rm_rid),
	    FUNC1(msg->rm_status),
	    FUNC1(msg->rm_infobuflen),
	    FUNC1(msg->rm_infobufoffset));

	*buf = NULL;
	*bufsz = 0;
	if (FUNC1(msg->rm_status) != RNDIS_STATUS_SUCCESS) {
		FUNC0("query failed 0x%x\n", FUNC1(msg->rm_status));
		return (FUNC1(msg->rm_status));
	}
	limit = FUNC1(msg->rm_infobuflen);
	limit += FUNC1(msg->rm_infobufoffset);
	limit += RNDIS_HEADER_OFFSET;

	if (limit > (uint64_t)FUNC1(msg->rm_len)) {
		FUNC0("ctrl message error: invalid query info "
		    "len/offset/end_position(%u/%u/%u) -> "
		    "go out of buffer limit %u\n",
		    FUNC1(msg->rm_infobuflen),
		    FUNC1(msg->rm_infobufoffset),
		    FUNC1(msg->rm_infobuflen) +
		    FUNC1(msg->rm_infobufoffset) + RNDIS_HEADER_OFFSET,
		    FUNC1(msg->rm_len));
		return (RNDIS_STATUS_FAILURE);
	}
	*buf = ((const uint8_t *)msg) + RNDIS_HEADER_OFFSET +
	    FUNC1(msg->rm_infobufoffset);
	*bufsz = FUNC1(msg->rm_infobuflen);

	return (FUNC1(msg->rm_status));
}