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
typedef  int uint32_t ;

/* Variables and functions */
#define  SDP_DATA_SEQ16 130 
#define  SDP_DATA_SEQ32 129 
#define  SDP_DATA_SEQ8 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC5(uint8_t const *start, uint8_t const *end)
{
	uint32_t	type, len;

	if (end - start < 2) {
		FUNC3(stderr, "Invalid Protocol Descriptor List. " \
				"Too short, len=%d\n", end - start);
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
		FUNC3(stderr, "Invalid Protocol Descriptor List. " \
				"Not a sequence, type=%#x\n", type);
		return;
		/* NOT REACHED */
	}

	if (len > (end - start)) {
		FUNC3(stderr, "Invalid Protocol Descriptor List. " \
				"Too long, len=%d\n", len);
		return;
	}

	while (start < end) {
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
			FUNC3(stderr, "Invalid Protocol Descriptor List. " \
					"Not a sequence, type=%#x\n", type);
			return;
			/* NOT REACHED */
		}

		if (len > (end - start)) {
			FUNC3(stderr, "Invalid Protocol Descriptor List. " \
					"Too long, len=%d\n", len);
			return;
		}

		FUNC4(start, start + len);
		start += len;
	}
}