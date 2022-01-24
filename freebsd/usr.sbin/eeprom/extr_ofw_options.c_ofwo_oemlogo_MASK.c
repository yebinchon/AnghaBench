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
struct ofwo_extabent {char* ex_prop; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_IOERR ; 
 int EX_OK ; 
 int EX_USAGE ; 
 int OFWO_LOGO ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 

__attribute__((used)) static int
FUNC11(const struct ofwo_extabent *exent, int fd, const void *buf,
    int buflen, const char *val)
{
	int lfd;
	char logo[OFWO_LOGO + 1];

	if (val) {
		if (val[0] == '\0')
			FUNC4(fd, FUNC3(fd), exent->ex_prop, "", 1);
		else {
			if ((lfd = FUNC6(val, O_RDONLY)) == -1) {
				FUNC9("could not open '%s'", val);
				return (EX_USAGE);
			}
			if (FUNC8(lfd, logo, OFWO_LOGO) != OFWO_LOGO ||
			    FUNC2(lfd, 0, SEEK_END) != OFWO_LOGO) {
				FUNC0(lfd);
				FUNC10("logo '%s' has wrong size.", val);
				return (EX_USAGE);
			}
			FUNC0(lfd);
			logo[OFWO_LOGO] = '\0';
			if (FUNC4(fd, FUNC3(fd), exent->ex_prop,
			    logo, OFWO_LOGO + 1) != OFWO_LOGO)
				FUNC1(EX_IOERR, "writing logo failed.");
		}
	} else
		if (buflen != 0)
			FUNC7("%s: <logo data>\n", exent->ex_prop);
		else
			FUNC5(exent->ex_prop, (const char *)buf,
			    buflen);
	return (EX_OK);
}