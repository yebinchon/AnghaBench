#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kaudit_record {int dummy; } ;
struct kaudit_queue {int dummy; } ;
struct TYPE_2__ {scalar_t__ aq_lowater; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ FUNC0 (struct kaudit_queue*) ; 
 struct kaudit_record* FUNC1 (struct kaudit_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct kaudit_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct kaudit_queue*,struct kaudit_record*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kaudit_queue*,struct kaudit_record*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kaudit_record*) ; 
 int /*<<< orphan*/  audit_mtx ; 
 struct kaudit_queue audit_q ; 
 scalar_t__ audit_q_len ; 
 TYPE_1__ audit_qctrl ; 
 int /*<<< orphan*/  audit_watermark_cv ; 
 int /*<<< orphan*/  audit_worker_cv ; 
 int /*<<< orphan*/  FUNC6 (struct kaudit_record*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  k_q ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(void *arg)
{
	struct kaudit_queue ar_worklist;
	struct kaudit_record *ar;
	int lowater_signal;

	FUNC2(&ar_worklist);
	FUNC10(&audit_mtx);
	while (1) {
		FUNC9(&audit_mtx, MA_OWNED);

		/*
		 * Wait for a record.
		 */
		while (FUNC0(&audit_q))
			FUNC8(&audit_worker_cv, &audit_mtx);

		/*
		 * If there are records in the global audit record queue,
		 * transfer them to a thread-local queue and process them
		 * one by one.  If we cross the low watermark threshold,
		 * signal any waiting processes that they may wake up and
		 * continue generating records.
		 */
		lowater_signal = 0;
		while ((ar = FUNC1(&audit_q))) {
			FUNC4(&audit_q, ar, k_q);
			audit_q_len--;
			if (audit_q_len == audit_qctrl.aq_lowater)
				lowater_signal++;
			FUNC3(&ar_worklist, ar, k_q);
		}
		if (lowater_signal)
			FUNC7(&audit_watermark_cv);

		FUNC11(&audit_mtx);
		while ((ar = FUNC1(&ar_worklist))) {
			FUNC4(&ar_worklist, ar, k_q);
			FUNC6(ar);
			FUNC5(ar);
		}
		FUNC10(&audit_mtx);
	}
}