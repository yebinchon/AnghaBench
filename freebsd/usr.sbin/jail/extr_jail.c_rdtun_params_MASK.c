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
struct jailparam {int jp_flags; scalar_t__ jp_valuelen; int jp_ctltype; int /*<<< orphan*/ * jp_name; int /*<<< orphan*/ * jp_value; } ;
struct cfjail {int flags; int njp; struct jailparam* jp; int /*<<< orphan*/ * intparams; int /*<<< orphan*/  jid; } ;

/* Variables and functions */
 int CTLTYPE ; 
 int CTLTYPE_STRING ; 
 size_t IP_ALLOW_DYING ; 
 int /*<<< orphan*/  JAIL_DYING ; 
 int JF_RDTUN ; 
 int JP_BOOL ; 
 int JP_NOBOOL ; 
 scalar_t__ FUNC0 (struct jailparam*) ; 
 struct jailparam* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct cfjail*) ; 
 int /*<<< orphan*/ * jail_errmsg ; 
 int /*<<< orphan*/  FUNC5 (struct cfjail*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct jailparam*,int) ; 
 scalar_t__ FUNC7 (struct jailparam*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct jailparam*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (struct jailparam*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int
FUNC13(struct cfjail *j, int dofail)
{
	struct jailparam *jp, *rtparams, *rtjp;
	int nrt, rval;

	if (j->flags & JF_RDTUN)
		return 0;
	j->flags |= JF_RDTUN;
	nrt = 0;
	for (jp = j->jp; jp < j->jp + j->njp; jp++)
		if (FUNC0(jp) && FUNC11(jp->jp_name, "jid"))
			nrt++;
	if (nrt == 0)
		return 0;
	rtjp = rtparams = FUNC1(++nrt * sizeof(struct jailparam));
	if (FUNC9(rtjp, "jid") < 0 ||
	    FUNC8(rtjp, &j->jid, sizeof j->jid) < 0) {
		FUNC5(j, "%s", jail_errmsg);
		FUNC3(1);
	}
	for (jp = j->jp; jp < j->jp + j->njp; jp++)
		if (FUNC0(jp) && FUNC11(jp->jp_name, "jid")) {
			*++rtjp = *jp;
			rtjp->jp_value = NULL;
		}
	rval = 0;
	if (FUNC7(rtparams, nrt,
	    FUNC2(j->intparams[IP_ALLOW_DYING]) ? JAIL_DYING : 0) > 0) {
		rtjp = rtparams + 1;
		for (jp = j->jp; rtjp < rtparams + nrt; jp++) {
			if (FUNC0(jp) && FUNC11(jp->jp_name, "jid")) {
				if (!((jp->jp_flags & (JP_BOOL | JP_NOBOOL)) &&
				    jp->jp_valuelen == 0 &&
				    *(int *)jp->jp_value) &&
				    !(rtjp->jp_valuelen == jp->jp_valuelen &&
				    !((jp->jp_ctltype & CTLTYPE) ==
				    CTLTYPE_STRING ? FUNC12(rtjp->jp_value,
				    jp->jp_value, jp->jp_valuelen) :
				    FUNC10(rtjp->jp_value, jp->jp_value,
				    jp->jp_valuelen)))) {
					if (dofail) {
						FUNC5(j, "%s cannot be "
						    "changed after creation",
						    jp->jp_name);
						FUNC4(j);
						rval = -1;
					} else
						rval = 1;
					break;
				}
				rtjp++;
			}
		}
	}
	for (rtjp = rtparams + 1; rtjp < rtparams + nrt; rtjp++)
		rtjp->jp_name = NULL;
	FUNC6(rtparams, nrt);
	return rval;
}