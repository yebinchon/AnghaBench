#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct group_des {int custom_port; int nports; int /*<<< orphan*/  pipename; } ;
struct TYPE_2__ {int num_groups; int output_rings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int DEF_OUT_PIPES ; 
 int MAX_IFNAMELEN ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*) ; 
 TYPE_1__ glob_arg ; 
 struct group_des* groups ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct group_des*,int /*<<< orphan*/ ,int) ; 
 struct group_des* FUNC5 (struct group_des*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC7(char *spec)
{
	char *end = FUNC3(spec, ':');
	static int max_groups = 0;
	struct group_des *g;

	FUNC1("spec %s num_groups %d", spec, glob_arg.num_groups);
	if (max_groups < glob_arg.num_groups + 1) {
		size_t size = sizeof(*g) * (glob_arg.num_groups + 1);
		groups = FUNC5(groups, size);
		if (groups == NULL) {
			FUNC0("out of memory");
			return 1;
		}
	}
	g = &groups[glob_arg.num_groups];
	FUNC4(g, 0, sizeof(*g));

	if (end != NULL) {
		if (end - spec > MAX_IFNAMELEN - 8) {
			FUNC0("name '%s' too long", spec);
			return 1;
		}
		if (end == spec) {
			FUNC0("missing prefix before ':' in '%s'", spec);
			return 1;
		}
		FUNC6(g->pipename, spec, end - spec);
		g->custom_port = 1;
		end++;
	} else {
		/* no prefix, this group will use the
		 * name of the input port.
		 * This will be set in init_groups(),
		 * since here the input port may still
		 * be uninitialized
		 */
		end = spec;
	}
	if (*end == '\0') {
		g->nports = DEF_OUT_PIPES;
	} else {
		g->nports = FUNC2(end);
		if (g->nports < 1) {
			FUNC0("invalid number of pipes '%s' (must be at least 1)", end);
			return 1;
		}
	}
	glob_arg.output_rings += g->nports;
	glob_arg.num_groups++;
	return 0;
}