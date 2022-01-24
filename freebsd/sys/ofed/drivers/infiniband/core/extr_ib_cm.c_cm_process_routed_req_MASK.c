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
struct ib_wc {int /*<<< orphan*/  dlid_path_bits; int /*<<< orphan*/  sl; int /*<<< orphan*/  slid; } ;
struct cm_req_msg {scalar_t__ primary_local_lid; scalar_t__ primary_remote_lid; scalar_t__ alt_local_lid; scalar_t__ alt_remote_lid; } ;

/* Variables and functions */
 scalar_t__ IB_LID_PERMISSIVE ; 
 int /*<<< orphan*/  FUNC0 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC1 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct cm_req_msg *req_msg, struct ib_wc *wc)
{
	if (!FUNC1(req_msg)) {
		if (req_msg->primary_local_lid == IB_LID_PERMISSIVE) {
			req_msg->primary_local_lid = FUNC4(wc->slid);
			FUNC3(req_msg, wc->sl);
		}

		if (req_msg->primary_remote_lid == IB_LID_PERMISSIVE)
			req_msg->primary_remote_lid = FUNC4(wc->dlid_path_bits);
	}

	if (!FUNC0(req_msg)) {
		if (req_msg->alt_local_lid == IB_LID_PERMISSIVE) {
			req_msg->alt_local_lid = FUNC4(wc->slid);
			FUNC2(req_msg, wc->sl);
		}

		if (req_msg->alt_remote_lid == IB_LID_PERMISSIVE)
			req_msg->alt_remote_lid = FUNC4(wc->dlid_path_bits);
	}
}