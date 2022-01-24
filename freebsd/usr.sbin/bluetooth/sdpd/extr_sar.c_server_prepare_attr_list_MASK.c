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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  provider_p ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SDP_DATA_SEQ16 ; 
#define  SDP_DATA_UINT16 129 
#define  SDP_DATA_UINT32 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const* const) ; 

int32_t
FUNC5(provider_p const provider,
		uint8_t const *req, uint8_t const * const req_end,
		uint8_t *rsp, uint8_t const * const rsp_end)
{
	uint8_t	*ptr = rsp + 3;
	int32_t	 type, hi, lo, len;

	if (ptr > rsp_end)
		return (-1);

	while (req < req_end) {
		FUNC1(type, req);

		switch (type) {
		case SDP_DATA_UINT16:
			if (req + 2 > req_end)
				return (-1);

			FUNC0(lo, req);
			hi = lo;
			break;

		case SDP_DATA_UINT32:
			if (req + 4 > req_end)
				return (-1);

			FUNC0(lo, req);
			FUNC0(hi, req);
			break;

		default:
			return (-1);
			/* NOT REACHED */
		}

		for (; lo <= hi; lo ++) {
			len = FUNC4(provider, lo, ptr, rsp_end);
			if (len < 0)
				return (-1);

			ptr += len;
		}
	}

	len = ptr - rsp; /* we put this much bytes in rsp */

	/* Fix SEQ16 header for the rsp */
	FUNC3(SDP_DATA_SEQ16, rsp);
	FUNC2(len - 3, rsp);

	return (len);
}