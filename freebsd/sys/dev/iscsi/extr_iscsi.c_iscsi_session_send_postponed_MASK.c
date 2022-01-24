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
struct iscsi_session {int /*<<< orphan*/  is_sim; int /*<<< orphan*/  is_postponed; } ;
struct icl_pdu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct icl_pdu* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct icl_pdu*) ; 
 int /*<<< orphan*/  ip_next ; 
 int FUNC5 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct iscsi_session *is)
{
	struct icl_pdu *request;
	bool postpone;

	FUNC0(is);

	if (FUNC1(&is->is_postponed))
		return;
	while ((request = FUNC2(&is->is_postponed)) != NULL) {
		postpone = FUNC5(request);
		if (postpone)
			return;
		FUNC3(&is->is_postponed, ip_next);
		FUNC4(request);
	}
	FUNC6(is->is_sim, 1);
}