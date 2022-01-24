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
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  tmp ;
struct stat {scalar_t__ st_uid; int /*<<< orphan*/  st_mode; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 struct dirent* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(uid_t uid)
{
	DIR            *d = FUNC2("/var/at/jobs");

	if (d != NULL) {
		struct dirent  *e;

		while ((e = FUNC3(d)) != NULL) {
			struct stat     st;

			if (FUNC6(e->d_name, ".lock", 5) != 0 &&
			    FUNC5(e->d_name, &st) == 0 &&
			    !FUNC0(st.st_mode) &&
			    st.st_uid == uid) {
				char            tmp[MAXPATHLEN];

				FUNC4(tmp, sizeof(tmp), "/usr/bin/atrm %s",
				    e->d_name);
				FUNC7(tmp);
			}
		}
		FUNC1(d);
	}
}