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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(int argc, const char **argv, const char *prefix)
{
	char *remoteurl, *res;
	const char *up_path, *url;

	if (argc != 4)
		FUNC0("resolve-relative-url-test only accepts three arguments: <up_path> <remoteurl> <url>");

	up_path = argv[1];
	remoteurl = FUNC5(argv[2]);
	url = argv[3];

	if (!FUNC4(up_path, "(null)"))
		up_path = NULL;

	res = FUNC3(remoteurl, url, up_path);
	FUNC2(res);
	FUNC1(res);
	FUNC1(remoteurl);
	return 0;
}