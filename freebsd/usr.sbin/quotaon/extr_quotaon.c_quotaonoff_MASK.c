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
struct quotafile {int dummy; } ;
struct fstab {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 char** qfextension ; 
 int /*<<< orphan*/  FUNC1 (struct quotafile*) ; 
 char* FUNC2 (struct quotafile*) ; 
 scalar_t__ FUNC3 (struct quotafile*) ; 
 scalar_t__ FUNC4 (struct quotafile*) ; 
 struct quotafile* FUNC5 (struct fstab*,int,int /*<<< orphan*/ ) ; 
 char* FUNC6 (struct quotafile*) ; 
 scalar_t__ vflag ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC8(struct fstab *fs, int offmode, int type)
{
	struct quotafile *qf;

	if ((qf = FUNC5(fs, type, O_RDONLY)) == NULL)
		return (0);
	if (offmode) {
		if (FUNC3(qf) != 0) {
			FUNC7("%s", FUNC2(qf));
			return (1);
		}
		if (vflag)
			FUNC0("%s: quotas turned off\n", FUNC2(qf));
		FUNC1(qf);
		return(0);
	}
	if (FUNC4(qf) != 0) {
		FUNC7("using %s on %s", FUNC6(qf), FUNC2(qf));
		return (1);
	}
	if (vflag)
		FUNC0("%s: %s quotas turned on with data file %s\n", 
		    FUNC2(qf), qfextension[type], FUNC6(qf));
	FUNC1(qf);
	return(0);
}