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
struct icl_pdu {scalar_t__ ip_ahs_len; int /*<<< orphan*/ * ip_ahs_mbuf; int /*<<< orphan*/  ip_conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (struct icl_pdu*) ; 

__attribute__((used)) static int
FUNC3(struct icl_pdu *request, size_t *availablep)
{

	request->ip_ahs_len = FUNC2(request);
	if (request->ip_ahs_len == 0)
		return (0);

	request->ip_ahs_mbuf = FUNC1(request->ip_conn,
	    request->ip_ahs_len);
	if (request->ip_ahs_mbuf == NULL) {
		FUNC0("failed to receive AHS");
		return (-1);
	}

	*availablep -= request->ip_ahs_len;
	return (0);
}