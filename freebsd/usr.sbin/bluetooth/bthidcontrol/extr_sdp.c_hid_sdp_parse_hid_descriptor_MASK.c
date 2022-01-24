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
struct TYPE_3__ {int vlen; int /*<<< orphan*/ * value; } ;

/* Variables and functions */
#define  SDP_DATA_SEQ16 133 
#define  SDP_DATA_SEQ32 132 
#define  SDP_DATA_SEQ8 131 
#define  SDP_DATA_STR16 130 
#define  SDP_DATA_STR32 129 
#define  SDP_DATA_STR8 128 
 int SDP_DATA_UINT8 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int UDESC_REPORT ; 

__attribute__((used)) static int32_t
FUNC3(sdp_attr_p a)
{
	uint8_t	*ptr = a->value;
	uint8_t	*end = a->value + a->vlen;
	int32_t	 type, len, descriptor_type;

	if (end - ptr < 9)
		return (-1);

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

	while (ptr < end) {
		/* Descriptor */
		FUNC2(type, ptr);
		switch (type) {
		case SDP_DATA_SEQ8:
			if (ptr + 1 > end)
				return (-1);
			FUNC2(len, ptr);
			break;

		case SDP_DATA_SEQ16:
			if (ptr + 2 > end)
				return (-1);
			FUNC0(len, ptr);
			break;

		case SDP_DATA_SEQ32:
			if (ptr + 4 > end)
				return (-1);
			FUNC1(len, ptr);
			break;

		default:
			return (-1);
		}

		/* Descripor type */
		if (ptr + 1 > end)
			return (-1);
		FUNC2(type, ptr);
		if (type != SDP_DATA_UINT8 || ptr + 1 > end)
			return (-1);
		FUNC2(descriptor_type, ptr);

		/* Descriptor value */
		if (ptr + 1 > end)
			return (-1);
		FUNC2(type, ptr);
		switch (type) {
		case SDP_DATA_STR8:
			if (ptr + 1 > end)
				return (-1);
			FUNC2(len, ptr);
			break;

		case SDP_DATA_STR16:
			if (ptr + 2 > end)
				return (-1);
			FUNC0(len, ptr);
			break;

		case SDP_DATA_STR32:
			if (ptr + 4 > end)
				return (-1);
			FUNC1(len, ptr);
			break;

		default:
			return (-1);
		}
		if (ptr + len > end)
			return (-1);

		if (descriptor_type == UDESC_REPORT && len > 0) {
			a->value = ptr;
			a->vlen = len;

			return (0);
		}

		ptr += len;
	}

	return (-1);
}