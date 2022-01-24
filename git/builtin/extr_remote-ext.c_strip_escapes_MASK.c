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
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* git_req ; 
 char* git_req_vhost ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 char* FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC6(const char *str, const char *service,
	const char **next)
{
	size_t rpos = 0;
	int escape = 0;
	char special = 0;
	const char *service_noprefix = service;
	struct strbuf ret = STRBUF_INIT;

	FUNC2(service_noprefix, "git-", &service_noprefix);

	/* Pass the service to command. */
	FUNC1("GIT_EXT_SERVICE", service, 1);
	FUNC1("GIT_EXT_SERVICE_NOPREFIX", service_noprefix, 1);

	/* Scan the length of argument. */
	while (str[rpos] && (escape || str[rpos] != ' ')) {
		if (escape) {
			switch (str[rpos]) {
			case ' ':
			case '%':
			case 's':
			case 'S':
				break;
			case 'G':
			case 'V':
				special = str[rpos];
				if (rpos == 1)
					break;
				/* fallthrough */
			default:
				FUNC0("Bad remote-ext placeholder '%%%c'.",
					str[rpos]);
			}
			escape = 0;
		} else
			escape = (str[rpos] == '%');
		rpos++;
	}
	if (escape && !str[rpos])
		FUNC0("remote-ext command has incomplete placeholder");
	*next = str + rpos;
	if (**next == ' ')
		++*next;	/* Skip over space */

	/*
	 * Do the actual placeholder substitution. The string will be short
	 * enough not to overflow integers.
	 */
	rpos = special ? 2 : 0;		/* Skip first 2 bytes in specials. */
	escape = 0;
	while (str[rpos] && (escape || str[rpos] != ' ')) {
		if (escape) {
			switch (str[rpos]) {
			case ' ':
			case '%':
				FUNC3(&ret, str[rpos]);
				break;
			case 's':
				FUNC4(&ret, service_noprefix);
				break;
			case 'S':
				FUNC4(&ret, service);
				break;
			}
			escape = 0;
		} else
			switch (str[rpos]) {
			case '%':
				escape = 1;
				break;
			default:
				FUNC3(&ret, str[rpos]);
				break;
			}
		rpos++;
	}
	switch (special) {
	case 'G':
		git_req = FUNC5(&ret, NULL);
		return NULL;
	case 'V':
		git_req_vhost = FUNC5(&ret, NULL);
		return NULL;
	default:
		return FUNC5(&ret, NULL);
	}
}