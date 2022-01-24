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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int member_2; scalar_t__ flags; scalar_t__ vlen; int /*<<< orphan*/  value; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ sdp_attr_t ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ENOATTR ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/ * NG_HCI_BDADDR_ANY ; 
 int PROTOCOL_DESCRIPTOR_LIST_BUFFER_SIZE ; 
 scalar_t__ PROTOCOL_DESCRIPTOR_LIST_MINIMAL_SIZE ; 
 int /*<<< orphan*/  SDP_ATTR_INVALID ; 
 scalar_t__ SDP_ATTR_OK ; 
 int /*<<< orphan*/  SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SDP_DATA_ALT16 ; 
 scalar_t__ SDP_DATA_ALT32 ; 
 scalar_t__ SDP_DATA_ALT8 ; 
#define  SDP_DATA_SEQ16 130 
#define  SDP_DATA_SEQ32 129 
#define  SDP_DATA_SEQ8 128 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 (void*) ; 
 void* FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (void*,int,int /*<<< orphan*/ *,int,scalar_t__*,int,TYPE_1__*) ; 

int
FUNC10(bdaddr_t const *local, bdaddr_t const *remote,
			int service, int *channel, int *error)
{
	uint8_t		 buffer[PROTOCOL_DESCRIPTOR_LIST_BUFFER_SIZE];
	void		*ss    = NULL;
	uint16_t	 serv  = (uint16_t) service;
	uint32_t	 attr  = FUNC0(
					SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST,
					SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST);
	sdp_attr_t	 proto = { SDP_ATTR_INVALID,0,sizeof(buffer),buffer };
	uint32_t	 type, len;

	if (local == NULL)
		local = NG_HCI_BDADDR_ANY;
	if (remote == NULL || channel == NULL)
		FUNC4(EINVAL);

	if ((ss = FUNC8(local, remote)) == NULL)
		FUNC4(ENOMEM);
	if (FUNC7(ss) != 0)
		FUNC4(FUNC7(ss));

	if (FUNC9(ss, 1, &serv, 1, &attr, 1, &proto) != 0)
		FUNC4(FUNC7(ss));
	if (proto.flags != SDP_ATTR_OK)
		FUNC4(ENOATTR);

	FUNC6(ss);
	ss = NULL;

	/*
	 * If it is possible for more than one kind of protocol stack to be 
	 * used to gain access to the service, the ProtocolDescriptorList
	 * takes the form of a data element alternative. We always use the
	 * first protocol stack.
	 *
	 * A minimal Protocol Descriptor List for RFCOMM based service would
	 * look like
	 *
	 * seq8 len8			- 2 bytes
	 *	seq8 len8		- 2 bytes
	 *		uuid16 value16	- 3 bytes	L2CAP
	 *	seq8 len8		- 2 bytes
	 *		uuid16 value16	- 3 bytes	RFCOMM
	 *		uint8  value8	- 2 bytes	RFCOMM param #1 
	 *				=========
	 *				 14 bytes
	 *
	 * Lets not count first [seq8 len8] wrapper, so the minimal size of 
	 * the Protocol Descriptor List (the data we are actually interested
	 * in) for RFCOMM based service would be 12 bytes.
	 */

	if (proto.vlen < PROTOCOL_DESCRIPTOR_LIST_MINIMAL_SIZE)
		FUNC4(EINVAL);

	FUNC3(type, proto.value);

	if (type == SDP_DATA_ALT8) {
		FUNC3(len, proto.value);
	} else if (type == SDP_DATA_ALT16) {
		FUNC1(len, proto.value);
	} else if (type == SDP_DATA_ALT32) {
		FUNC2(len, proto.value);
	} else
		len = 0;

	if (len > 0)
		FUNC3(type, proto.value);

	switch (type) {
	case SDP_DATA_SEQ8:
		FUNC3(len, proto.value);
		break;

	case SDP_DATA_SEQ16:
		FUNC1(len, proto.value);
		break;

	case SDP_DATA_SEQ32:
		FUNC2(len, proto.value);
		break;

	default:
		FUNC4(ENOATTR);
		/* NOT REACHED */
	}

	if (len < PROTOCOL_DESCRIPTOR_LIST_MINIMAL_SIZE)
		FUNC4(EINVAL);

	return (FUNC5(proto.value,
					buffer + proto.vlen, channel, error));
}