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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/ * b; } ;
typedef  TYPE_1__ int128_t ;

/* Variables and functions */
#define  SDP_DATA_SEQ16 133 
#define  SDP_DATA_SEQ32 132 
#define  SDP_DATA_SEQ8 131 
#define  SDP_DATA_UUID128 130 
#define  SDP_DATA_UUID16 129 
#define  SDP_DATA_UUID32 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC8(uint8_t const *start, uint8_t const *end)
{
	uint32_t	type, len, value;

	if (end - start < 2) {
		FUNC4(stderr, "Invalid Service Class ID List. " \
				"Too short, len=%zd\n", end - start);
		return;
	}

	FUNC2(type, start);
	switch (type) {
	case SDP_DATA_SEQ8:
		FUNC2(len, start);
		break;

	case SDP_DATA_SEQ16:
		FUNC0(len, start);
		break;

	case SDP_DATA_SEQ32:
		FUNC1(len, start);
		break;

	default:
		FUNC4(stderr, "Invalid Service Class ID List. " \
				"Not a sequence, type=%#x\n", type);
		return;
		/* NOT REACHED */
	}

	if (len > (end - start)) {
		FUNC4(stderr, "Invalid Service Class ID List. " \
				"Too long len=%d\n", len);
		return;
	}

	while (start < end) {
		FUNC2(type, start);
		switch (type) {
		case SDP_DATA_UUID16:
			FUNC0(value, start);
			FUNC4(stdout, "\t%s (%#4.4x)\n",
					FUNC7(value), value);
			break;

		case SDP_DATA_UUID32:
			FUNC1(value, start);
			FUNC4(stdout, "\t%#8.8x\n", value);
			break;

		case SDP_DATA_UUID128: {
			int128_t	uuid;

			FUNC3(&uuid, start);
			FUNC4(stdout, "\t%#8.8x-%4.4x-%4.4x-%4.4x-%4.4x%8.8x\n",
					FUNC5(*(uint32_t *)&uuid.b[0]),
					FUNC6(*(uint16_t *)&uuid.b[4]),
					FUNC6(*(uint16_t *)&uuid.b[6]),
					FUNC6(*(uint16_t *)&uuid.b[8]),
					FUNC6(*(uint16_t *)&uuid.b[10]),
					FUNC5(*(uint32_t *)&uuid.b[12]));
			} break;

		default:
			FUNC4(stderr, "Invalid Service Class ID List. " \
					"Not a UUID, type=%#x\n", type);
			return;
			/* NOT REACHED */
		}
	}
}