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
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,char*) ; 
 char* FUNC7 () ; 

__attribute__((used)) static int FUNC8(int argc, const char **argv, const char *prefix)
{
	char *remoteurl = NULL;
	char *remote = FUNC2();
	const char *up_path = NULL;
	char *res;
	const char *url;
	struct strbuf sb = STRBUF_INIT;

	if (argc != 2 && argc != 3)
		FUNC0("resolve-relative-url only accepts one or two arguments");

	url = argv[1];
	FUNC6(&sb, "remote.%s.url", remote);
	FUNC1(remote);

	if (FUNC3(sb.buf, &remoteurl))
		/* the repository is its own authoritative upstream */
		remoteurl = FUNC7();

	if (argc == 3)
		up_path = argv[2];

	res = FUNC5(remoteurl, url, up_path);
	FUNC4(res);
	FUNC1(res);
	FUNC1(remoteurl);
	return 0;
}