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
struct lun {int l_ctl_lun; int /*<<< orphan*/  l_options; int /*<<< orphan*/  l_name; struct conf* l_conf; } ;
struct conf {int /*<<< orphan*/  conf_luns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct lun*,int /*<<< orphan*/ ) ; 
 struct lun* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  l_next ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 struct lun* FUNC6 (struct conf*,char const*) ; 

struct lun *
FUNC7(struct conf *conf, const char *name)
{
	struct lun *lun;

	lun = FUNC6(conf, name);
	if (lun != NULL) {
		FUNC5("duplicated lun \"%s\"", name);
		return (NULL);
	}

	lun = FUNC2(1, sizeof(*lun));
	if (lun == NULL)
		FUNC4(1, "calloc");
	lun->l_conf = conf;
	lun->l_name = FUNC3(name);
	FUNC0(&lun->l_options);
	FUNC1(&conf->conf_luns, lun, l_next);
	lun->l_ctl_lun = -1;

	return (lun);
}