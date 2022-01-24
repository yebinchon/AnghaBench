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
struct audit_pipe_preselect {int /*<<< orphan*/  app_mask; } ;
struct audit_pipe {int ap_preselect_mode; int /*<<< orphan*/  ap_preselect_flags; int /*<<< orphan*/  ap_preselect_naflags; } ;
typedef  int /*<<< orphan*/  au_id_t ;
typedef  int /*<<< orphan*/  au_event_t ;
typedef  int /*<<< orphan*/  au_class_t ;

/* Variables and functions */
#define  AUDITPIPE_PRESELECT_MODE_LOCAL 129 
#define  AUDITPIPE_PRESELECT_MODE_TRAIL 128 
 int /*<<< orphan*/  FUNC0 (struct audit_pipe*) ; 
 int /*<<< orphan*/  AU_DEFAUDITID ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct audit_pipe_preselect* FUNC2 (struct audit_pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int
FUNC4(struct audit_pipe *ap, au_id_t auid,
    au_event_t event, au_class_t class, int sorf, int trail_preselect)
{
	struct audit_pipe_preselect *app;

	FUNC0(ap);

	switch (ap->ap_preselect_mode) {
	case AUDITPIPE_PRESELECT_MODE_TRAIL:
		return (trail_preselect);

	case AUDITPIPE_PRESELECT_MODE_LOCAL:
		app = FUNC2(ap, auid);
		if (app == NULL) {
			if (auid == AU_DEFAUDITID)
				return (FUNC1(event, class,
				    &ap->ap_preselect_naflags, sorf));
			else
				return (FUNC1(event, class,
				    &ap->ap_preselect_flags, sorf));
		} else
			return (FUNC1(event, class, &app->app_mask,
			    sorf));

	default:
		FUNC3("audit_pipe_preselect_check: mode %d",
		    ap->ap_preselect_mode);
	}

	return (0);
}