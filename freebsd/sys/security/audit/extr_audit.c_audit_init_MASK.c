#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct kaudit_record {int dummy; } ;
struct TYPE_10__ {scalar_t__ af_currsz; scalar_t__ af_filesz; } ;
struct TYPE_6__ {int /*<<< orphan*/ * at_addr; int /*<<< orphan*/  at_type; } ;
struct TYPE_9__ {TYPE_1__ ai_termid; } ;
struct TYPE_8__ {scalar_t__ am_failure; scalar_t__ am_success; } ;
struct TYPE_7__ {int /*<<< orphan*/  aq_minfree; int /*<<< orphan*/  aq_bufsz; int /*<<< orphan*/  aq_lowater; int /*<<< orphan*/  aq_hiwater; } ;

/* Variables and functions */
 int /*<<< orphan*/  AQ_BUFSZ ; 
 int /*<<< orphan*/  AQ_HIWATER ; 
 int /*<<< orphan*/  AQ_LOWATER ; 
 int /*<<< orphan*/  AU_FS_MINFREE ; 
 int /*<<< orphan*/  AU_IPv4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_FIRST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 scalar_t__ audit_arge ; 
 scalar_t__ audit_argv ; 
 int /*<<< orphan*/  audit_fail_cv ; 
 scalar_t__ audit_fail_stop ; 
 TYPE_5__ audit_fstat ; 
 scalar_t__ audit_in_failure ; 
 TYPE_4__ audit_kinfo ; 
 int /*<<< orphan*/  audit_mtx ; 
 TYPE_3__ audit_nae_mask ; 
 scalar_t__ audit_panic_on_write_fail ; 
 scalar_t__ audit_pre_q_len ; 
 int /*<<< orphan*/  audit_q ; 
 scalar_t__ audit_q_len ; 
 TYPE_2__ audit_qctrl ; 
 int /*<<< orphan*/  audit_record_ctor ; 
 int /*<<< orphan*/  audit_record_dtor ; 
 int /*<<< orphan*/  audit_record_zone ; 
 int /*<<< orphan*/  audit_shutdown ; 
 int audit_syscalls_enabled ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ audit_trail_enabled ; 
 scalar_t__ audit_trail_suspended ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  audit_watermark_cv ; 
 int /*<<< orphan*/  audit_worker_cv ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shutdown_pre_sync ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(void)
{

	audit_trail_enabled = 0;
	audit_trail_suspended = 0;
	audit_syscalls_enabled = false;
	audit_panic_on_write_fail = 0;
	audit_fail_stop = 0;
	audit_in_failure = 0;
	audit_argv = 0;
	audit_arge = 0;

	audit_fstat.af_filesz = 0;	/* '0' means unset, unbounded. */
	audit_fstat.af_currsz = 0;
	audit_nae_mask.am_success = 0;
	audit_nae_mask.am_failure = 0;

	FUNC2(&audit_q);
	audit_q_len = 0;
	audit_pre_q_len = 0;
	audit_qctrl.aq_hiwater = AQ_HIWATER;
	audit_qctrl.aq_lowater = AQ_LOWATER;
	audit_qctrl.aq_bufsz = AQ_BUFSZ;
	audit_qctrl.aq_minfree = AU_FS_MINFREE;

	audit_kinfo.ai_termid.at_type = AU_IPv4;
	audit_kinfo.ai_termid.at_addr[0] = INADDR_ANY;

	FUNC8(&audit_mtx, "audit_mtx", NULL, MTX_DEF);
	FUNC1();
	FUNC6(&audit_worker_cv, "audit_worker_cv");
	FUNC6(&audit_watermark_cv, "audit_watermark_cv");
	FUNC6(&audit_fail_cv, "audit_fail_cv");

	audit_record_zone = FUNC9("audit_record",
	    sizeof(struct kaudit_record), audit_record_ctor,
	    audit_record_dtor, NULL, NULL, UMA_ALIGN_PTR, 0);

	/* First initialisation of audit_syscalls_enabled. */
	FUNC3();

	/* Initialize the BSM audit subsystem. */
	FUNC7();

	FUNC4();

	/* Register shutdown handler. */
	FUNC0(shutdown_pre_sync, audit_shutdown, NULL,
	    SHUTDOWN_PRI_FIRST);

	/* Start audit worker thread. */
	FUNC5();
}