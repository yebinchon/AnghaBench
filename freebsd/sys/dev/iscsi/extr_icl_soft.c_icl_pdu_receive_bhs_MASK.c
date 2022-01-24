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
struct iscsi_bhs {int dummy; } ;
struct icl_pdu {int /*<<< orphan*/  ip_bhs; int /*<<< orphan*/  ip_conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct icl_pdu *request, size_t *availablep)
{

	if (FUNC1(request->ip_conn,
	    request->ip_bhs, sizeof(struct iscsi_bhs))) {
		FUNC0("failed to receive BHS");
		return (-1);
	}

	*availablep -= sizeof(struct iscsi_bhs);
	return (0);
}