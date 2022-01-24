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
typedef  enum protocol { ____Placeholder_protocol } protocol ;

/* Variables and functions */
 int PROTO_FILE ; 
 int PROTO_GIT ; 
 int PROTO_LOCAL ; 
 int PROTO_SSH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int FUNC7 (char*) ; 
 char* FUNC8 (char*,int) ; 
 char* FUNC9 (char*,char*) ; 
 char* FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (char const*) ; 

__attribute__((used)) static enum protocol FUNC13(const char *url_orig, char **ret_host,
				       char **ret_path)
{
	char *url;
	char *host, *path;
	char *end;
	int separator = '/';
	enum protocol protocol = PROTO_LOCAL;

	if (FUNC6(url_orig))
		url = FUNC10(url_orig);
	else
		url = FUNC12(url_orig);

	host = FUNC9(url, "://");
	if (host) {
		*host = '\0';
		protocol = FUNC3(url);
		host += 3;
	} else {
		host = url;
		if (!FUNC11(url)) {
			protocol = PROTO_SSH;
			separator = ':';
		}
	}

	/*
	 * Don't do destructive transforms as protocol code does
	 * '[]' unwrapping in get_host_and_port()
	 */
	end = FUNC5(&host, 0);

	if (protocol == PROTO_LOCAL)
		path = end;
	else if (protocol == PROTO_FILE && *host != '/' &&
		 !FUNC4(host) &&
		 FUNC7(host - 2) > 1)
		path = host - 2; /* include the leading "//" */
	else if (protocol == PROTO_FILE && FUNC4(end))
		path = end; /* "file://$(pwd)" may be "file://C:/projects/repo" */
	else
		path = FUNC8(end, separator);

	if (!path || !*path)
		FUNC1(FUNC0("no path specified; see 'git help pull' for valid url syntax"));

	/*
	 * null-terminate hostname and point path to ~ for URL's like this:
	 *    ssh://host.xz/~user/repo
	 */

	end = path; /* Need to \0 terminate host here */
	if (separator == ':')
		path++; /* path starts after ':' */
	if (protocol == PROTO_GIT || protocol == PROTO_SSH) {
		if (path[1] == '~')
			path++;
	}

	path = FUNC12(path);
	*end = '\0';

	*ret_host = FUNC12(host);
	*ret_path = path;
	FUNC2(url);
	return protocol;
}