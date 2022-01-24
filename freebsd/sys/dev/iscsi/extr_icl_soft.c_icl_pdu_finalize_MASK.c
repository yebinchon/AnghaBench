#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct icl_pdu {scalar_t__ ip_data_len; TYPE_2__* ip_bhs_mbuf; TYPE_2__* ip_data_mbuf; struct icl_conn* ip_conn; } ;
struct icl_conn {scalar_t__ ic_data_crc32c; scalar_t__ ic_header_crc32c; } ;
typedef  int /*<<< orphan*/  digest ;
struct TYPE_6__ {size_t len; } ;
struct TYPE_7__ {TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 size_t FUNC2 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC3 (struct icl_pdu*,scalar_t__) ; 
 size_t FUNC4 (struct icl_pdu*) ; 
 int FUNC5 (TYPE_2__*,int,void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC7(struct icl_pdu *request)
{
	size_t padding, pdu_len;
	uint32_t digest, zero = 0;
	int ok;
	struct icl_conn *ic;

	ic = request->ip_conn;

	FUNC3(request, request->ip_data_len);

	pdu_len = FUNC4(request);

	if (ic->ic_header_crc32c) {
		digest = FUNC1(request->ip_bhs_mbuf);
		ok = FUNC5(request->ip_bhs_mbuf, sizeof(digest),
		    (void *)&digest);
		if (ok != 1) {
			FUNC0("failed to append header digest");
			return (1);
		}
	}

	if (request->ip_data_len != 0) {
		padding = FUNC2(request);
		if (padding > 0) {
			ok = FUNC5(request->ip_data_mbuf, padding,
			    (void *)&zero);
			if (ok != 1) {
				FUNC0("failed to append padding");
				return (1);
			}
		}

		if (ic->ic_data_crc32c) {
			digest = FUNC1(request->ip_data_mbuf);

			ok = FUNC5(request->ip_data_mbuf, sizeof(digest),
			    (void *)&digest);
			if (ok != 1) {
				FUNC0("failed to append data digest");
				return (1);
			}
		}

		FUNC6(request->ip_bhs_mbuf, request->ip_data_mbuf);
		request->ip_data_mbuf = NULL;
	}

	request->ip_bhs_mbuf->m_pkthdr.len = pdu_len;

	return (0);
}