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
struct iscsi_session {int /*<<< orphan*/  is_postponed; int /*<<< orphan*/  is_sim; } ;
struct icl_pdu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*) ; 
 struct iscsi_session* FUNC1 (struct icl_pdu*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct icl_pdu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct icl_pdu*) ; 
 int /*<<< orphan*/  ip_next ; 
 int FUNC5 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct icl_pdu *request)
{
	struct iscsi_session *is;
	bool postpone;

	is = FUNC1(request);
	FUNC0(is);
	FUNC6(is);
	postpone = FUNC5(request);
	if (postpone) {
		if (FUNC2(&is->is_postponed))
			FUNC7(is->is_sim, 1);
		FUNC3(&is->is_postponed, request, ip_next);
		return;
	}
	FUNC4(request);
}