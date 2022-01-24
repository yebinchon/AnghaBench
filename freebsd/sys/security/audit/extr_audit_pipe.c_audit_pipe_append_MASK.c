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
typedef  int u_int ;
struct audit_pipe_entry {int ape_record_len; int /*<<< orphan*/ * ape_record; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct audit_pipe {scalar_t__ ap_qlen; scalar_t__ ap_qlimit; int ap_qbyteslen; int ap_flags; int /*<<< orphan*/  ap_cv; int /*<<< orphan*/  ap_sigio; TYPE_1__ ap_selinfo; int /*<<< orphan*/  ap_inserts; int /*<<< orphan*/  ap_queue; int /*<<< orphan*/  ap_drops; } ;

/* Variables and functions */
 int AUDIT_PIPE_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct audit_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_AUDIT_PIPE_ENTRY ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PSOCK ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct audit_pipe_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ape_queue ; 
 int /*<<< orphan*/  audit_pipe_drops ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct audit_pipe_entry*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct audit_pipe *ap, void *record, u_int record_len)
{
	struct audit_pipe_entry *ape;

	FUNC0(ap);

	if (ap->ap_qlen >= ap->ap_qlimit) {
		ap->ap_drops++;
		audit_pipe_drops++;
		return;
	}

	ape = FUNC6(sizeof(*ape), M_AUDIT_PIPE_ENTRY, M_NOWAIT | M_ZERO);
	if (ape == NULL) {
		ap->ap_drops++;
		audit_pipe_drops++;
		return;
	}

	ape->ape_record = FUNC6(record_len, M_AUDIT_PIPE_ENTRY, M_NOWAIT);
	if (ape->ape_record == NULL) {
		FUNC5(ape, M_AUDIT_PIPE_ENTRY);
		ap->ap_drops++;
		audit_pipe_drops++;
		return;
	}

	FUNC3(record, ape->ape_record, record_len);
	ape->ape_record_len = record_len;

	FUNC2(&ap->ap_queue, ape, ape_queue);
	ap->ap_inserts++;
	ap->ap_qlen++;
	ap->ap_qbyteslen += ape->ape_record_len;
	FUNC8(&ap->ap_selinfo, PSOCK);
	FUNC1(&ap->ap_selinfo.si_note, 0);
	if (ap->ap_flags & AUDIT_PIPE_ASYNC)
		FUNC7(&ap->ap_sigio, SIGIO, 0);
	FUNC4(&ap->ap_cv);
}