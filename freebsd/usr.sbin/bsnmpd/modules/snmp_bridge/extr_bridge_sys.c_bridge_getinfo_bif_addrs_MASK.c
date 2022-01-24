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
typedef  int uint32_t ;
struct tp_entry {int dummy; } ;
struct ifbareq {int /*<<< orphan*/  ifba_dst; } ;
struct bridge_if {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int FUNC0 (struct bridge_if*,struct ifbareq**) ; 
 int /*<<< orphan*/  FUNC1 (struct ifbareq*,struct tp_entry*) ; 
 struct tp_entry* FUNC2 (int /*<<< orphan*/ ,struct bridge_if*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifbareq*) ; 

int
FUNC4(struct bridge_if *bif)
{
	uint32_t i;
	int32_t buf_len;
	struct ifbareq *addr_req_buf, *addr_req;
	struct tp_entry *te;

	if ((buf_len = FUNC0(bif, &addr_req_buf)) < 0)
		return (-1);

	for (i = 0; i < buf_len / sizeof(struct ifbareq); i++) {
		addr_req = addr_req_buf + i;

		if ((te = FUNC2(addr_req->ifba_dst, bif)) != NULL)
			FUNC1(addr_req, te);
	}

	FUNC3(addr_req_buf);
	return (i);
}