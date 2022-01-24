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
typedef  int /*<<< orphan*/  idtype_t ;
typedef  int /*<<< orphan*/  id_t ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int PPROT_CLEAR ; 
 int PPROT_DESCEND ; 
 int PPROT_INHERIT ; 
 int PPROT_SET ; 
 int /*<<< orphan*/  PROC_SPROTECT ; 
 int /*<<< orphan*/  P_PGID ; 
 int /*<<< orphan*/  P_PID ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char**) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7(int argc, char *argv[])
{
	idtype_t idtype;
	id_t id;
	int ch, flags;
	bool descend, inherit, idset;

	idtype = P_PID;
	id = FUNC3();
	flags = PPROT_SET;
	descend = inherit = idset = false;
	while ((ch = FUNC2(argc, argv, "cdig:p:")) != -1)
		switch (ch) {
		case 'c':
			flags = PPROT_CLEAR;
			break;
		case 'd':
			descend = true;
			break;
		case 'i':
			inherit = true;
			break;
		case 'g':
			idtype = P_PGID;
			id = FUNC4(optarg);
			idset = true;
			break;
		case 'p':
			idtype = P_PID;
			id = FUNC4(optarg);
			idset = true;
			break;
		}
	argc -= optind;
	argv += optind;

	if ((idset && argc != 0) || (!idset && (argc == 0 || descend)))
		FUNC6();

	if (descend)
		flags |= PPROT_DESCEND;
	if (inherit)
		flags |= PPROT_INHERIT;
	if (FUNC5(idtype, id, PROC_SPROTECT, &flags) == -1)
		FUNC0(1, "procctl");

	if (argc != 0) {
		errno = 0;
		FUNC1(*argv, argv);
		FUNC0(errno == ENOENT ? 127 : 126, "%s", *argv);
	}
	return (0);
}