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
struct pmcstat_image {int /*<<< orphan*/  pi_samplename; } ;
typedef  int /*<<< orphan*/  pmcstat_interned_string ;
typedef  int /*<<< orphan*/  pmc_id_t ;
typedef  int /*<<< orphan*/  fullpath ;

/* Variables and functions */
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*,char const*,char*) ; 

pmcstat_interned_string
FUNC5(const char *samplesdir, struct pmcstat_image *image,
    pmc_id_t pmcid)
{
	const char *pmcname;
	char fullpath[PATH_MAX];

	pmcname = FUNC1(pmcid);
	if (!pmcname)
		FUNC0(EX_SOFTWARE, "ERROR: cannot find pmcid");

	(void) FUNC4(fullpath, sizeof(fullpath),
	    "%s/%s/%s", samplesdir, pmcname,
	    FUNC3(image->pi_samplename));

	return (FUNC2(fullpath));
}