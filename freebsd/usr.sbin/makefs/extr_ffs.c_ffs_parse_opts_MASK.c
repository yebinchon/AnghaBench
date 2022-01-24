#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int letter; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ option_t ;
struct TYPE_7__ {TYPE_1__* fs_options; TYPE_3__* fs_specific; } ;
typedef  TYPE_2__ fsinfo_t ;
struct TYPE_8__ {int /*<<< orphan*/  optimization; } ;
typedef  TYPE_3__ ffs_opt_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int DEBUG_FS_PARSE_OPTS ; 
 int /*<<< orphan*/  FS_OPTSPACE ; 
 int /*<<< orphan*/  FS_OPTTIME ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (TYPE_1__*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

int
FUNC6(const char *option, fsinfo_t *fsopts)
{
	ffs_opt_t	*ffs_opts = fsopts->fs_specific;
	option_t *ffs_options = fsopts->fs_options;
	char buf[1024];

	int	rv;

	FUNC1(option != NULL);
	FUNC1(fsopts != NULL);
	FUNC1(ffs_opts != NULL);

	if (debug & DEBUG_FS_PARSE_OPTS)
		FUNC2("ffs_parse_opts: got `%s'\n", option);

	rv = FUNC3(ffs_options, option, buf, sizeof(buf));
	if (rv == -1)
		return 0;

	if (ffs_options[rv].name == NULL)
		FUNC0();

	switch (ffs_options[rv].letter) {
	case 'o':
		if (FUNC4(buf, "time") == 0) {
			ffs_opts->optimization = FS_OPTTIME;
		} else if (FUNC4(buf, "space") == 0) {
			ffs_opts->optimization = FS_OPTSPACE;
		} else {
			FUNC5("Invalid optimization `%s'", buf);
			return 0;
		}
		break;
	default:
		break;
	}
	return 1;
}