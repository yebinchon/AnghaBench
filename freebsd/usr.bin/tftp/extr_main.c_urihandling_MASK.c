#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* m_mode; int /*<<< orphan*/ * m_name; } ;

/* Variables and functions */
 int ARG_MAX ; 
 int MAXLINE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  margc ; 
 int /*<<< orphan*/  margv ; 
 char* mode ; 
 TYPE_1__* modes ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC11(char *URI)
{
	char	uri[ARG_MAX];
	char	*host = NULL;
	char	*path = NULL;
	char	*opts = NULL;
	const char *tmode = "octet";
	char	*s;
	char	line[MAXLINE];
	int	i;

	FUNC9(uri, URI, ARG_MAX);
	host = uri + 7;

	if ((s = FUNC7(host, '/')) == NULL) {
		FUNC1(stderr,
		    "Invalid URI: Couldn't find / after hostname\n");
		FUNC0(1);
	}
	*s = '\0';
	path = s + 1;

	if ((s = FUNC7(path, ';')) != NULL) {
		*s = '\0';
		opts = s + 1;

		if (FUNC10(opts, "mode=", 5) == 0) {
			tmode = opts;
			tmode += 5;

			for (i = 0; modes[i].m_name != NULL; i++) {
				if (FUNC8(modes[i].m_name, tmode) == 0)
					break;
			}
			if (modes[i].m_name == NULL) {
				FUNC1(stderr, "Invalid mode: '%s'\n", mode);
				FUNC0(1);
			}
			FUNC5(modes[i].m_mode);
		}
	} else {
		FUNC5("octet");
	}

	FUNC4(host, NULL);

	FUNC6(line, "get %s", path);
	FUNC3(line);
	FUNC2(margc, margv);
}