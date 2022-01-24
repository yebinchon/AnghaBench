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
struct isns {int /*<<< orphan*/  i_addr; int /*<<< orphan*/  i_ai; struct conf* i_conf; } ;
struct conf {int /*<<< orphan*/  conf_isns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct isns*,int /*<<< orphan*/ ) ; 
 struct isns* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  i_next ; 
 int /*<<< orphan*/  FUNC3 (struct isns*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

int
FUNC7(struct conf *conf, const char *addr)
{
	struct isns *isns;

	isns = FUNC1(1, sizeof(*isns));
	if (isns == NULL)
		FUNC4(1, "calloc");
	isns->i_conf = conf;
	FUNC0(&conf->conf_isns, isns, i_next);
	isns->i_addr = FUNC2(addr);

	if (FUNC6(isns->i_addr, "3205", &isns->i_ai)) {
		FUNC5("invalid iSNS address %s", isns->i_addr);
		FUNC3(isns);
		return (1);
	}

	/*
	 * XXX: getaddrinfo(3) may return multiple addresses; we should turn
	 *	those into multiple servers.
	 */

	return (0);
}