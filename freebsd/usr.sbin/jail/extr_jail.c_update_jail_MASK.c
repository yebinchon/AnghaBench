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
struct jailparam {int dummy; } ;
struct cfjail {int njp; int /*<<< orphan*/ * intparams; struct jailparam* jp; int /*<<< orphan*/  jid; } ;

/* Variables and functions */
 size_t IP_ALLOW_DYING ; 
 int JAIL_DYING ; 
 int JAIL_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (struct jailparam*) ; 
 struct jailparam* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cfjail*) ; 
 int /*<<< orphan*/  jail_errmsg ; 
 int /*<<< orphan*/  FUNC4 (struct cfjail*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct jailparam*,int) ; 
 scalar_t__ FUNC6 (struct jailparam*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (struct jailparam*,char*) ; 
 int FUNC8 (struct cfjail*,struct jailparam*,int,int) ; 

__attribute__((used)) static int
FUNC9(struct cfjail *j)
{
	struct jailparam *jp, *setparams, *sjp;
	int ns, jid;

	ns = 0;
	for (jp = j->jp; jp < j->jp + j->njp; jp++)
		if (!FUNC0(jp))
			ns++;
	if (ns == 0)
		return 0;
	sjp = setparams = FUNC1(++ns * sizeof(struct jailparam));
	if (FUNC7(sjp, "jid") < 0 ||
	    FUNC6(sjp, &j->jid, sizeof j->jid) < 0) {
		FUNC4(j, "%s", jail_errmsg);
		FUNC3(j);
		return -1;
	}
	for (jp = j->jp; jp < j->jp + j->njp; jp++)
		if (!FUNC0(jp))
			*++sjp = *jp;

	jid = FUNC8(j, setparams, ns,
	    FUNC2(j->intparams[IP_ALLOW_DYING])
	    ? JAIL_UPDATE | JAIL_DYING : JAIL_UPDATE);
	if (jid < 0) {
		FUNC4(j, "%s", jail_errmsg);
		FUNC3(j);
	}
	FUNC5(setparams, 1);
	return jid;
}