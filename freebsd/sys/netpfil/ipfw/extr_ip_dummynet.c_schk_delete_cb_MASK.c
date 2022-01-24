#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; int /*<<< orphan*/  sched_nr; } ;
struct dn_schk {void* profile; TYPE_2__* fp; int /*<<< orphan*/ * siht; TYPE_1__ sch; int /*<<< orphan*/  fsk_list; } ;
struct TYPE_6__ {int /*<<< orphan*/  schk_count; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* destroy ) (struct dn_schk*) ;} ;

/* Variables and functions */
 int DNHT_SCAN_DEL ; 
 int DN_DELETE_FS ; 
 int DN_DESTROY ; 
 int DN_HAVE_MASK ; 
 int /*<<< orphan*/  M_DUMMYNET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dn_schk*,int) ; 
 TYPE_3__ dn_cfg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct dn_schk*) ; 

__attribute__((used)) static int
FUNC8(void *obj, void *arg)
{
	struct dn_schk *s = obj;
#if 0
	int a = (int)arg;
	ND("sched %d arg %s%s",
		s->sch.sched_nr,
		a&DN_DESTROY ? "DEL ":"",
		a&DN_DELETE_FS ? "DEL_FS":"");
#endif
	FUNC5(&s->fsk_list, arg ? DN_DESTROY : 0);
	/* no more flowset pointing to us now */
	if (s->sch.flags & DN_HAVE_MASK) {
		FUNC3(s->siht, si_destroy, NULL);
		FUNC2(s->siht, 0);
	} else if (s->siht)
		FUNC6(s->siht, NULL);
	if (s->profile) {
		FUNC4(s->profile, M_DUMMYNET);
		s->profile = NULL;
	}
	s->siht = NULL;
	if (s->fp->destroy)
		s->fp->destroy(s);
	FUNC1(s, sizeof(*s));	// safety
	FUNC4(obj, M_DUMMYNET);
	dn_cfg.schk_count--;
	return DNHT_SCAN_DEL;
}