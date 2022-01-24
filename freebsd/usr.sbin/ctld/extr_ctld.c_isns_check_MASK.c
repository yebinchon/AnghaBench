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
struct isns {struct conf* i_conf; } ;
struct conf {int /*<<< orphan*/  conf_isns_timeout; int /*<<< orphan*/  conf_portal_groups; int /*<<< orphan*/  conf_targets; } ;
typedef  int /*<<< orphan*/  hostname ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (struct isns*,int,char*) ; 
 int FUNC4 (struct isns*) ; 
 int /*<<< orphan*/  FUNC5 (struct isns*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct isns*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

void
FUNC8(struct isns *isns)
{
	struct conf *conf = isns->i_conf;
	int s, res;
	char hostname[256];

	if (FUNC0(&conf->conf_targets) ||
	    FUNC0(&conf->conf_portal_groups))
		return;
	FUNC7(conf->conf_isns_timeout, false);
	s = FUNC4(isns);
	if (s < 0) {
		FUNC7(0, false);
		return;
	}
	FUNC2(hostname, sizeof(hostname));

	res = FUNC3(isns, s, hostname);
	if (res < 0) {
		FUNC5(isns, s, hostname);
		FUNC6(isns, s, hostname);
	}
	FUNC1(s);
	FUNC7(0, false);
}