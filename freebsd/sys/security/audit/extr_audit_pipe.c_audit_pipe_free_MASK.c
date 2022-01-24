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
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct audit_pipe {TYPE_1__ ap_selinfo; int /*<<< orphan*/  ap_cv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct audit_pipe*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_pipe*) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_pipe*) ; 
 int /*<<< orphan*/  M_AUDIT_PIPE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct audit_pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ap_list ; 
 int /*<<< orphan*/  audit_pipe_count ; 
 int /*<<< orphan*/  FUNC5 (struct audit_pipe*) ; 
 int /*<<< orphan*/  audit_pipe_list ; 
 int /*<<< orphan*/  FUNC6 (struct audit_pipe*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct audit_pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC11(struct audit_pipe *ap)
{

	FUNC0();
	FUNC1(ap);

	FUNC6(ap);
	FUNC5(ap);
	FUNC7(&ap->ap_cv);
	FUNC3(ap);
	FUNC2(ap);
	FUNC10(&ap->ap_selinfo);
	FUNC9(&ap->ap_selinfo.si_note);
	FUNC4(&audit_pipe_list, ap, ap_list);
	FUNC8(ap, M_AUDIT_PIPE);
	audit_pipe_count--;
}