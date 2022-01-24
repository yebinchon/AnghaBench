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
struct conf {int conf_isns_period; int conf_isns_timeout; int conf_timeout; int conf_maxproc; scalar_t__ conf_debug; int /*<<< orphan*/  conf_isns; int /*<<< orphan*/  conf_pports; int /*<<< orphan*/  conf_portal_groups; int /*<<< orphan*/  conf_ports; int /*<<< orphan*/  conf_auth_groups; int /*<<< orphan*/  conf_targets; int /*<<< orphan*/  conf_luns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct conf* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

struct conf *
FUNC3(void)
{
	struct conf *conf;

	conf = FUNC1(1, sizeof(*conf));
	if (conf == NULL)
		FUNC2(1, "calloc");
	FUNC0(&conf->conf_luns);
	FUNC0(&conf->conf_targets);
	FUNC0(&conf->conf_auth_groups);
	FUNC0(&conf->conf_ports);
	FUNC0(&conf->conf_portal_groups);
	FUNC0(&conf->conf_pports);
	FUNC0(&conf->conf_isns);

	conf->conf_isns_period = 900;
	conf->conf_isns_timeout = 5;
	conf->conf_debug = 0;
	conf->conf_timeout = 60;
	conf->conf_maxproc = 30;

	return (conf);
}