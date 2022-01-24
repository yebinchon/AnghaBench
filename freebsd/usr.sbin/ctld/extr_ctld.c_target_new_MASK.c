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
struct target {int /*<<< orphan*/  t_ports; struct conf* t_conf; int /*<<< orphan*/ * t_name; } ;
struct conf {int /*<<< orphan*/  conf_targets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct target*,int /*<<< orphan*/ ) ; 
 struct target* FUNC2 (int,int) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  t_next ; 
 struct target* FUNC7 (struct conf*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (char const*) ; 

struct target *
FUNC10(struct conf *conf, const char *name)
{
	struct target *targ;
	int i, len;

	targ = FUNC7(conf, name);
	if (targ != NULL) {
		FUNC5("duplicated target \"%s\"", name);
		return (NULL);
	}
	if (FUNC9(name) == false) {
		FUNC5("target name \"%s\" is invalid", name);
		return (NULL);
	}
	targ = FUNC2(1, sizeof(*targ));
	if (targ == NULL)
		FUNC4(1, "calloc");
	targ->t_name = FUNC3(name);

	/*
	 * RFC 3722 requires us to normalize the name to lowercase.
	 */
	len = FUNC6(name);
	for (i = 0; i < len; i++)
		targ->t_name[i] = FUNC8(targ->t_name[i]);

	targ->t_conf = conf;
	FUNC0(&targ->t_ports);
	FUNC1(&conf->conf_targets, targ, t_next);

	return (targ);
}