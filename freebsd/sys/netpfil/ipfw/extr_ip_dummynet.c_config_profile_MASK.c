#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct dn_schk {TYPE_3__* profile; } ;
struct TYPE_7__ {int len; } ;
struct dn_profile {int link_nr; scalar_t__ samples_no; TYPE_1__ oid; } ;
struct dn_id {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {int len; } ;
struct TYPE_9__ {TYPE_2__ oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int DN_MAX_ID ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_DUMMYNET ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 TYPE_6__ dn_cfg ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 struct dn_schk* FUNC4 (int) ; 
 TYPE_3__* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct dn_profile*,int) ; 

__attribute__((used)) static int
FUNC7(struct dn_profile *pf, struct dn_id *arg)
{
	struct dn_schk *s;
	int i, olen, err = 0;

	if (pf->oid.len < sizeof(*pf)) {
		FUNC0("short profile len %d", pf->oid.len);
		return EINVAL;
	}
	i = pf->link_nr;
	if (i <= 0 || i >= DN_MAX_ID)
		return EINVAL;
	/* XXX other sanity checks */
	FUNC1();
	for (; i < 2*DN_MAX_ID; i += DN_MAX_ID) {
		s = FUNC4(i);

		if (s == NULL) {
			err = EINVAL;
			break;
		}
		dn_cfg.id++;
		/*
		 * If we had a profile and the new one does not fit,
		 * or it is deleted, then we need to free memory.
		 */
		if (s->profile && (pf->samples_no == 0 ||
		    s->profile->oid.len < pf->oid.len)) {
			FUNC3(s->profile, M_DUMMYNET);
			s->profile = NULL;
		}
		if (pf->samples_no == 0)
			continue;
		/*
		 * new profile, possibly allocate memory
		 * and copy data.
		 */
		if (s->profile == NULL)
			s->profile = FUNC5(pf->oid.len,
				    M_DUMMYNET, M_NOWAIT | M_ZERO);
		if (s->profile == NULL) {
			FUNC0("no memory for profile %d", i);
			err = ENOMEM;
			break;
		}
		/* preserve larger length XXX double check */
		olen = s->profile->oid.len;
		if (olen < pf->oid.len)
			olen = pf->oid.len;
		FUNC6(s->profile, pf, pf->oid.len);
		s->profile->oid.len = olen;
	}
	FUNC2();
	return err;
}