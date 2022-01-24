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
typedef  int u_long ;
typedef  int /*<<< orphan*/  u_int ;
struct ccuser {int dummy; } ;
typedef  struct ccuser ccport ;
struct ccnode {int /*<<< orphan*/  hook_cnt; int /*<<< orphan*/  data; void* manage; void* dump; } ;
struct cchook {int is_uni; struct ccuser* inst; void* hook; struct ccnode* node; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  void* hook_p ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NG_CCATM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,struct cchook*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 struct ccnode* FUNC4 (int /*<<< orphan*/ ) ; 
 struct ccuser* FUNC5 (int /*<<< orphan*/ ,struct cchook*,int /*<<< orphan*/ ) ; 
 struct ccuser* FUNC6 (int /*<<< orphan*/ ,struct cchook*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cchook*,int /*<<< orphan*/ ) ; 
 struct cchook* FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ng_ccatm_rcvdump ; 
 int /*<<< orphan*/  ng_ccatm_rcvmanage ; 
 int /*<<< orphan*/  ng_ccatm_rcvuni ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 scalar_t__ FUNC10 (char const*,char*,int) ; 
 int FUNC11 (char const*,char**,int) ; 

__attribute__((used)) static int
FUNC12(node_p node, hook_p hook, const char *name)
{
	struct ccnode *priv = FUNC4(node);
	struct ccport *port;
	struct ccuser *user;
	struct cchook *hd;
	u_long lport;
	char *end;

	if (FUNC10(name, "uni", 3) == 0) {
		/*
		 * This is a UNI hook. Should be a new port.
		 */
		if (name[3] == '\0')
			return (EINVAL);
		lport = FUNC11(name + 3, &end, 10);
		if (*end != '\0' || lport == 0 || lport > 0xffffffff)
			return (EINVAL);

		hd = FUNC8(sizeof(*hd), M_NG_CCATM, M_NOWAIT);
		if (hd == NULL)
			return (ENOMEM);
		hd->is_uni = 1;
		hd->node = priv;
		hd->hook = hook;

		port = FUNC5(priv->data, hd, (u_int)lport);
		if (port == NULL) {
			FUNC7(hd, M_NG_CCATM);
			return (ENOMEM);
		}
		hd->inst = port;

		FUNC2(hook, hd);
		FUNC3(hook, ng_ccatm_rcvuni);
		FUNC0(hook);

		priv->hook_cnt++;

		return (0);
	}

	if (FUNC9(name, "dump") == 0) {
		priv->dump = hook;
		FUNC3(hook, ng_ccatm_rcvdump);
		return (0);
	}

	if (FUNC9(name, "manage") == 0) {
		priv->manage = hook;
		FUNC3(hook, ng_ccatm_rcvmanage);
		return (0);
	}

	/*
	 * User hook
	 */
	hd = FUNC8(sizeof(*hd), M_NG_CCATM, M_NOWAIT);
	if (hd == NULL)
		return (ENOMEM);
	hd->is_uni = 0;
	hd->node = priv;
	hd->hook = hook;

	user = FUNC6(priv->data, hd, FUNC1(hook));
	if (user == NULL) {
		FUNC7(hd, M_NG_CCATM);
		return (ENOMEM);
	}

	hd->inst = user;
	FUNC2(hook, hd);
	FUNC0(hook);

	priv->hook_cnt++;

	return (0);
}