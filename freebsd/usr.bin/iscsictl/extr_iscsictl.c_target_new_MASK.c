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
struct target {struct conf* t_conf; } ;
struct conf {int /*<<< orphan*/  conf_targets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct target*,int /*<<< orphan*/ ) ; 
 struct target* FUNC1 (int,int) ; 
 int /*<<< orphan*/  t_next ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

struct target *
FUNC3(struct conf *conf)
{
	struct target *targ;

	targ = FUNC1(1, sizeof(*targ));
	if (targ == NULL)
		FUNC2(1, "calloc");
	targ->t_conf = conf;
	FUNC0(&conf->conf_targets, targ, t_next);

	return (targ);
}