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
struct nat44_cfg_nat {int /*<<< orphan*/  name; int /*<<< orphan*/  if_name; int /*<<< orphan*/  mode; int /*<<< orphan*/  redir_cnt; int /*<<< orphan*/  ip; } ;
struct ip_fw_chain {int gencnt; int /*<<< orphan*/  nat; } ;
struct cfg_nat {int /*<<< orphan*/  redir_chain; int /*<<< orphan*/  ip; int /*<<< orphan*/  lib; int /*<<< orphan*/  mode; int /*<<< orphan*/  if_name; int /*<<< orphan*/  redir_cnt; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct cfg_nat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cfg_nat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IPFW ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  _next ; 
 int /*<<< orphan*/  FUNC10 (char*,struct cfg_nat*) ; 
 int /*<<< orphan*/  FUNC11 (struct cfg_nat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ip_fw_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct cfg_nat*) ; 
 struct cfg_nat* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cfg_nat* FUNC15 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC18(struct ip_fw_chain *chain, struct nat44_cfg_nat *ucfg)
{
	struct cfg_nat *ptr, *tcfg;
	int gencnt;

	/*
	 * Find/create nat rule.
	 */
	FUNC0(chain);
	gencnt = chain->gencnt;
	ptr = FUNC14(&chain->nat, ucfg->name);
	if (ptr == NULL) {
		FUNC1(chain);
		/* New rule: allocate and init new instance. */
		ptr = FUNC15(sizeof(struct cfg_nat), M_IPFW, M_WAITOK | M_ZERO);
		ptr->lib = FUNC7(NULL);
		FUNC4(&ptr->redir_chain);
	} else {
		/* Entry already present: temporarily unhook it. */
		FUNC2(chain);
		FUNC6(ptr, _next);
		FUNC12(chain, ptr->id);
		FUNC3(chain);
		FUNC1(chain);
	}

	/*
	 * Basic nat (re)configuration.
	 */
	ptr->id = FUNC17(ucfg->name, NULL, 10);
	/*
	 * XXX - what if this rule doesn't nat any ip and just
	 * redirect?
	 * do we set aliasaddress to 0.0.0.0?
	 */
	ptr->ip = ucfg->ip;
	ptr->redir_cnt = ucfg->redir_cnt;
	ptr->mode = ucfg->mode;
	FUNC16(ptr->if_name, ucfg->if_name, sizeof(ptr->if_name));
	FUNC9(ptr->lib, ptr->mode, ~0);
	FUNC8(ptr->lib, ptr->ip);

	/*
	 * Redir and LSNAT configuration.
	 */
	/* Delete old cfgs. */
	FUNC11(ptr, &ptr->redir_chain);
	/* Add new entries. */
	FUNC10((char *)(ucfg + 1), ptr);
	FUNC0(chain);

	/* Extra check to avoid race with another ipfw_nat_cfg() */
	tcfg = NULL;
	if (gencnt != chain->gencnt)
	    tcfg = FUNC14(&chain->nat, ucfg->name);
	FUNC2(chain);
	if (tcfg != NULL)
		FUNC6(tcfg, _next);
	FUNC5(&chain->nat, ptr, _next);
	FUNC3(chain);
	chain->gencnt++;

	FUNC1(chain);

	if (tcfg != NULL)
		FUNC13(ptr);
}