#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {scalar_t__ flags; scalar_t__ attr; int vlen; int /*<<< orphan*/ * value; } ;
typedef  TYPE_1__ sdp_attr_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ SDP_ATTR_INVALID ; 
 scalar_t__ SDP_ATTR_OK ; 
 scalar_t__ SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  SDP_UUID_PROTOCOL_BNEP ; 
 int /*<<< orphan*/  SDP_UUID_PROTOCOL_L2CAP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l2cap_psm ; 
 int /*<<< orphan*/  local_bdaddr ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  remote_bdaddr ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (void*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  service_class ; 
 int /*<<< orphan*/  service_name ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(void)
{
	uint8_t buffer[512];
	sdp_attr_t attr;
	uint32_t range;
	void *ss;
	int rv;
	uint8_t *seq0, *seq1;

	attr.flags = SDP_ATTR_INVALID;
	attr.attr = 0;
	attr.vlen = sizeof(buffer);
	attr.value = buffer;

	range = FUNC0(SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST,
			       SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST);

	ss = FUNC10(&local_bdaddr, &remote_bdaddr);
	if (ss == NULL || (errno = FUNC9(ss)) != 0) {
		FUNC6("%s: %m", service_name);
		FUNC5(EXIT_FAILURE);
	}

	FUNC7("Searching for %s service at %s",
	    service_name, FUNC4(&remote_bdaddr, NULL));

	rv = FUNC11(ss, 1, &service_class, 1, &range, 1, &attr);
	if (rv != 0) {
		FUNC6("%s: %s", service_name, FUNC12(FUNC9(ss)));
		FUNC5(EXIT_FAILURE);
	}

	FUNC8(ss);

	if (attr.flags != SDP_ATTR_OK
	    || attr.attr != SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST) {
		FUNC6("%s service not found", service_name);
		FUNC5(EXIT_FAILURE);
	}

	/*
	 * we expect the following protocol descriptor list
	 *
	 *	seq len
	 *	  seq len
	 *	    uuid value == L2CAP
	 *	    uint16 value16 => PSM
	 *	  seq len
	 *	    uuid value == BNEP
	 */
	if (FUNC1(&attr.value, attr.value + attr.vlen, &seq0)
	    && FUNC1(&seq0, attr.value, &seq1)
	    && FUNC3(&seq1, seq0, SDP_UUID_PROTOCOL_L2CAP)
	    && FUNC2(&seq1, seq0, &l2cap_psm)
	    && FUNC1(&seq0, attr.value, &seq1)
	    && FUNC3(&seq1, seq0, SDP_UUID_PROTOCOL_BNEP)) {
		FUNC7("Found PSM %d for service %s", l2cap_psm, service_name);
		return;
	}

	FUNC6("%s query failed", service_name);
	FUNC5(EXIT_FAILURE);
}