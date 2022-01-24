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
struct target {int /*<<< orphan*/  t_ports; int /*<<< orphan*/  t_name; } ;
struct portal_group {int /*<<< orphan*/  pg_ports; int /*<<< orphan*/  pg_name; } ;
struct port {char* p_name; struct portal_group* p_portal_group; struct target* p_target; scalar_t__ p_ioctl_port; struct conf* p_conf; } ;
struct conf {int /*<<< orphan*/  conf_ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct port*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct port* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  p_next ; 
 int /*<<< orphan*/  p_pgs ; 
 int /*<<< orphan*/  p_ts ; 
 int /*<<< orphan*/ * FUNC6 (struct conf*,char*) ; 

struct port *
FUNC7(struct conf *conf, struct target *target, struct portal_group *pg)
{
	struct port *port;
	char *name;
	int ret;

	ret = FUNC1(&name, "%d-%d", pg->pg_name, target->t_name);
	if (ret <= 0)
		FUNC4(1, "asprintf");
	if (FUNC6(conf, name) != NULL) {
		FUNC5("duplicate port \"%s\"", name);
		FUNC3(name);
		return (NULL);
	}
	port = FUNC2(1, sizeof(*port));
	if (port == NULL)
		FUNC4(1, "calloc");
	port->p_conf = conf;
	port->p_name = name;
	port->p_ioctl_port = 0;
	FUNC0(&conf->conf_ports, port, p_next);
	FUNC0(&target->t_ports, port, p_ts);
	port->p_target = target;
	FUNC0(&pg->pg_ports, port, p_pgs);
	port->p_portal_group = pg;
	return (port);
}