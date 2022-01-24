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
struct mntarg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MOUNT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct mntarg* FUNC1 (struct mntarg*,char*,char*,int) ; 
 char* FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char**,char*) ; 

__attribute__((used)) static struct mntarg *
FUNC6(struct mntarg *ma, const char *options)
{
	char *p;
	char *name, *name_arg;
	char *val, *val_arg;
	char *opts;

	if (options == NULL || options[0] == '\0')
		return (ma);

	p = opts = FUNC4(options, M_MOUNT);
	if (opts == NULL) {
		return (ma);
	}

	while((name = FUNC5(&p, ",")) != NULL) {
		if (name[0] == '\0')
			break;

		val = FUNC2(name, '=');
		if (val != NULL) {
			*val = '\0';
			++val;
		}
		if( FUNC3(name, "rw") == 0 ||
		    FUNC3(name, "noro") == 0) {
			/*
			 * The first time we mount the root file system,
			 * we need to mount 'ro', so We need to ignore
			 * 'rw' and 'noro' mount options.
			 */
			continue;
		}
		name_arg = FUNC4(name, M_MOUNT);
		val_arg = NULL;
		if (val != NULL)
			val_arg = FUNC4(val, M_MOUNT);

		ma = FUNC1(ma, name_arg, val_arg,
		    (val_arg != NULL ? -1 : 0));
	}
	FUNC0(opts, M_MOUNT);
	return (ma);
}