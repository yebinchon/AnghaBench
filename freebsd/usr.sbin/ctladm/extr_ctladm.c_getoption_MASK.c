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
struct ctladm_opts {char* subopt; int /*<<< orphan*/ * optname; int /*<<< orphan*/  argnum; int /*<<< orphan*/  cmdnum; } ;
typedef  int /*<<< orphan*/  ctladm_optret ;
typedef  int /*<<< orphan*/  ctladm_cmdargs ;

/* Variables and functions */
 int /*<<< orphan*/  CC_OR_AMBIGUOUS ; 
 int /*<<< orphan*/  CC_OR_FOUND ; 
 int /*<<< orphan*/  CC_OR_NOT_FOUND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

ctladm_optret
FUNC3(struct ctladm_opts *table, char *arg, uint32_t *cmdnum,
	  ctladm_cmdargs *argnum, const char **subopt)
{
	struct ctladm_opts *opts;
	int num_matches = 0;

	for (opts = table; (opts != NULL) && (opts->optname != NULL);
	     opts++) {
		if (FUNC2(opts->optname, arg, FUNC1(arg)) == 0) {
			*cmdnum = opts->cmdnum;
			*argnum = opts->argnum;
			*subopt = opts->subopt;

			if (FUNC0(opts->optname, arg) == 0)
				return (CC_OR_FOUND);

			if (++num_matches > 1)
				return(CC_OR_AMBIGUOUS);
		}
	}

	if (num_matches > 0)
		return(CC_OR_FOUND);
	else
		return(CC_OR_NOT_FOUND);
}