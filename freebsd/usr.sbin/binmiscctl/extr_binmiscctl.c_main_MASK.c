#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {char* xbe_name; int /*<<< orphan*/  xbe_version; } ;
typedef  TYPE_1__ ximgact_binmisc_entry_t ;
typedef  int /*<<< orphan*/  xbe_out ;
typedef  int /*<<< orphan*/  xbe_in ;
typedef  size_t uint32_t ;
struct TYPE_12__ {int (* func ) (int,char**,TYPE_1__*) ;char* name; } ;

/* Variables and functions */
 int CMD_LIST ; 
 int CMD_LOOKUP ; 
#define  EEXIST 132 
#define  EINVAL 131 
#define  ENOENT 130 
 int ENOMEM ; 
#define  ENOSPC 129 
#define  EPERM 128 
 int /*<<< orphan*/  IBE_MAX_ENTRIES ; 
 int /*<<< orphan*/  IBE_VERSION ; 
 int /*<<< orphan*/  KMOD_NAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * cmd_sysctl_name ; 
 TYPE_10__* cmds ; 
 int FUNC1 (int,char**) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (size_t) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int,char**,TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_1__*,size_t*,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

int
FUNC13(int argc, char **argv)
{
	int error = 0, cmd = -1;
	ximgact_binmisc_entry_t xbe_in, *xbe_inp = NULL;
	ximgact_binmisc_entry_t xbe_out, *xbe_outp = NULL;
	size_t xbe_in_sz = 0;
	size_t xbe_out_sz = 0, *xbe_out_szp = NULL;
	uint32_t i;

	if (FUNC6(KMOD_NAME) == -1) {
		if (FUNC4(KMOD_NAME) == -1)
			FUNC2("Can't load %s kernel module: %s",
			    KMOD_NAME, FUNC9(errno));
	}

	FUNC0(&xbe_in, sizeof(xbe_in));
	FUNC0(&xbe_out, sizeof(xbe_out));
	xbe_in.xbe_version = IBE_VERSION;

	if (argc < 2)
		FUNC12("Error: requires at least one argument");

	argc--, argv++;
	cmd = FUNC1(argc, argv);
	if (cmd < 0)
		FUNC12("Error: Unknown command \"%s\"", argv[0]);
	argc--, argv++;

	error = (*cmds[cmd].func)(argc, argv, &xbe_in);
	if (error)
		FUNC12("Can't parse command-line for '%s' command",
		    cmds[cmd].name);

	if (cmd != CMD_LIST) {
		xbe_inp = &xbe_in;
		xbe_in_sz = sizeof(xbe_in);
	} else
		xbe_out_szp = &xbe_out_sz;
	if (cmd == CMD_LOOKUP) {
		xbe_out_sz = sizeof(xbe_out);
		xbe_outp = &xbe_out;
		xbe_out_szp = &xbe_out_sz;
	}

	error = FUNC11(cmd_sysctl_name[cmd], xbe_outp, xbe_out_szp,
	    xbe_inp, xbe_in_sz);

	if (error)
		switch(errno) {
		case EINVAL:
			FUNC12("Invalid interpreter name or --interpreter, "
			    "--magic, --mask, or --size argument value");
			break;

		case EEXIST:
			FUNC12("'%s' is not unique in activator list",
			    xbe_in.xbe_name);
			break;

		case ENOENT:
			FUNC12("'%s' is not found in activator list",
			    xbe_in.xbe_name);
			break;

		case ENOSPC:
			FUNC2("Fatal: no more room in the activator list "
			    "(limited to %d enties)", IBE_MAX_ENTRIES);
			break;

		case EPERM:
			FUNC12("Insufficient privileges for '%s' command",
			    cmds[cmd].name);
			break;

		default:
			FUNC2("Fatal: sysctlbyname() returned: %s",
			    FUNC9(errno));
			break;
		}


	if (cmd == CMD_LOOKUP)
		FUNC7(xbe_outp);

	if (cmd == CMD_LIST && xbe_out_sz > 0) {
		xbe_outp = FUNC5(xbe_out_sz);
		if (!xbe_outp)
			FUNC2("Fatal: out of memory");
		while(1) {
			size_t osize = xbe_out_sz;
			error = FUNC11(cmd_sysctl_name[cmd], xbe_outp,
			    &xbe_out_sz, NULL, 0);

			if (error == -1 && errno == ENOMEM &&
			    xbe_out_sz == osize) {
				/*
				 * Buffer too small. Increase it by one
				 * entry.
				 */
				xbe_out_sz += sizeof(xbe_out);
				xbe_outp = FUNC8(xbe_outp, xbe_out_sz);
				if (!xbe_outp)
					FUNC2("Fatal: out of memory");
			} else
				break;
		}
		if (error) {
			FUNC3(xbe_outp);
			FUNC2("Fatal: %s", FUNC9(errno));
		}
		for(i = 0; i < (xbe_out_sz / sizeof(xbe_out)); i++)
			FUNC7(&xbe_outp[i]);
	}

	return (error);
}