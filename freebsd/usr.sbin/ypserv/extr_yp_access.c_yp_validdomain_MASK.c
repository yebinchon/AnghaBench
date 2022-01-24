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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  dompath ;

/* Variables and functions */
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ YPMAXDOMAIN ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char const*) ; 
 scalar_t__ FUNC2 (char*,struct stat*) ; 
 scalar_t__ FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 char* yp_dir ; 

int
FUNC7(const char *domain)
{
	struct stat statbuf;
	char dompath[MAXPATHLEN + 2];

	if (domain == NULL || FUNC6(domain, "binding") ||
	    !FUNC4(domain, ".") || !FUNC4(domain, "..") ||
	    FUNC3(domain, '/') || FUNC5(domain) > YPMAXDOMAIN)
		return(1);

	FUNC1(dompath, sizeof(dompath), "%s/%s", yp_dir, domain);

	if (FUNC2(dompath, &statbuf) < 0 || !FUNC0(statbuf.st_mode))
		return(1);


	return(0);
}