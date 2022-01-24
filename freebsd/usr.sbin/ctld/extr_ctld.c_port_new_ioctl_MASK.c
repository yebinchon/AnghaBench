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
struct pport {int dummy; } ;
struct port {char* p_name; int p_ioctl_port; int p_ioctl_pp; int p_ioctl_vp; struct target* p_target; struct conf* p_conf; } ;
struct conf {int /*<<< orphan*/  conf_ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct port*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char**,char*,...) ; 
 struct port* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  p_next ; 
 int /*<<< orphan*/  p_ts ; 
 int /*<<< orphan*/ * FUNC6 (struct conf*,char*) ; 
 struct port* FUNC7 (struct conf*,struct target*,struct pport*) ; 
 struct pport* FUNC8 (struct conf*,char*) ; 

struct port *
FUNC9(struct conf *conf, struct target *target, int pp, int vp)
{
	struct pport *pport;
	struct port *port;
	char *pname;
	char *name;
	int ret;

	ret = FUNC1(&pname, "ioctl/%d/%d", pp, vp);
	if (ret <= 0) {
		FUNC4(1, "asprintf");
		return (NULL);
	}

	pport = FUNC8(conf, pname);
	if (pport != NULL) {
		FUNC3(pname);
		return (FUNC7(conf, target, pport));
	}

	ret = FUNC1(&name, "%s-%d", pname, target->t_name);
	FUNC3(pname);

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
	port->p_ioctl_port = 1;
	port->p_ioctl_pp = pp;
	port->p_ioctl_vp = vp;
	FUNC0(&conf->conf_ports, port, p_next);
	FUNC0(&target->t_ports, port, p_ts);
	port->p_target = target;
	return (port);
}