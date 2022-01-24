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
typedef  TYPE_1__* sdp_attr_p ;
typedef  int int32_t ;
struct TYPE_3__ {int vlen; scalar_t__ attr; int /*<<< orphan*/ * value; } ;

/* Variables and functions */
 scalar_t__ SDP_ATTR_ADDITIONAL_PROTOCOL_DESCRIPTOR_LISTS ; 
#define  SDP_DATA_SEQ16 133 
#define  SDP_DATA_SEQ32 132 
#define  SDP_DATA_SEQ8 131 
 int SDP_DATA_UINT16 ; 
#define  SDP_DATA_UUID128 130 
#define  SDP_DATA_UUID16 129 
#define  SDP_DATA_UUID32 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int SDP_UUID_PROTOCOL_L2CAP ; 

__attribute__((used)) static int32_t
FUNC3(sdp_attr_p a)
{
	uint8_t	*ptr = a->value;
	uint8_t	*end = a->value + a->vlen;
	int32_t	 type, len, uuid, psm;

	if (end - ptr < 15)
		return (-1);

	if (a->attr == SDP_ATTR_ADDITIONAL_PROTOCOL_DESCRIPTOR_LISTS) {
		FUNC2(type, ptr);
		switch (type) {
		case SDP_DATA_SEQ8:
			FUNC2(len, ptr);
			break;

		case SDP_DATA_SEQ16:
			FUNC0(len, ptr);
			break;

		case SDP_DATA_SEQ32:
			FUNC1(len, ptr);
			break;

		default:
			return (-1);
		}
		if (ptr + len > end)
			return (-1);
	}

	FUNC2(type, ptr);
	switch (type) {
	case SDP_DATA_SEQ8:
		FUNC2(len, ptr);
		break;

	case SDP_DATA_SEQ16:
		FUNC0(len, ptr);
		break;

	case SDP_DATA_SEQ32:
		FUNC1(len, ptr);
		break;

	default:
		return (-1);
	}
	if (ptr + len > end)
		return (-1);

	/* Protocol */
	FUNC2(type, ptr);
	switch (type) {
	case SDP_DATA_SEQ8:
		FUNC2(len, ptr);
		break;

	case SDP_DATA_SEQ16:
		FUNC0(len, ptr);
		break;

	case SDP_DATA_SEQ32:
		FUNC1(len, ptr);
		break;

	default:
		return (-1);
	}
	if (ptr + len > end)
		return (-1);

	/* UUID */
	if (ptr + 3 > end)
		return (-1);
	FUNC2(type, ptr);
	switch (type) {
	case SDP_DATA_UUID16:
		FUNC0(uuid, ptr);
		if (uuid != SDP_UUID_PROTOCOL_L2CAP)
			return (-1);
		break;

	case SDP_DATA_UUID32:  /* XXX FIXME can we have 32-bit UUID */
	case SDP_DATA_UUID128: /* XXX FIXME can we have 128-bit UUID */
	default:
		return (-1);
	}

	/* PSM */
	if (ptr + 3 > end)
		return (-1);
	FUNC2(type, ptr);
	if (type != SDP_DATA_UINT16)
		return (-1);
	FUNC0(psm, ptr);

	return (psm);
}