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
struct userconf {char* home; } ;
typedef  int /*<<< orphan*/  home ;

/* Variables and functions */
 int /*<<< orphan*/  EX_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char const*) ; 

__attribute__((used)) static char *
FUNC2(struct userconf * cnf, char *homedir, const char *user)
{
	static char     home[128];

	if (homedir)
		return (homedir);

	if (cnf->home == NULL || *cnf->home == '\0')
		FUNC0(EX_CONFIG, "no base home directory set");
	FUNC1(home, sizeof(home), "%s/%s", cnf->home, user);

	return (home);
}