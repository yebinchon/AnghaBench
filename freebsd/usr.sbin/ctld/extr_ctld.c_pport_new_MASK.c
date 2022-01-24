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
typedef  int /*<<< orphan*/  uint32_t ;
struct pport {int /*<<< orphan*/  pp_ports; int /*<<< orphan*/  pp_ctl_port; int /*<<< orphan*/  pp_name; struct conf* pp_conf; } ;
struct conf {int /*<<< orphan*/  conf_pports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pport*,int /*<<< orphan*/ ) ; 
 struct pport* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  pp_next ; 

struct pport *
FUNC5(struct conf *conf, const char *name, uint32_t ctl_port)
{
	struct pport *pp;

	pp = FUNC2(1, sizeof(*pp));
	if (pp == NULL)
		FUNC4(1, "calloc");
	pp->pp_conf = conf;
	pp->pp_name = FUNC3(name);
	pp->pp_ctl_port = ctl_port;
	FUNC0(&pp->pp_ports);
	FUNC1(&conf->conf_pports, pp, pp_next);
	return (pp);
}