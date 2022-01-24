#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* s_addr; } ;
struct TYPE_3__ {void* s_addr; } ;
struct securenet {struct securenet* next; TYPE_2__ mask; TYPE_1__ net; } ;
struct in_addr {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 void* INADDR_ANY ; 
 int /*<<< orphan*/  LINEBUFSZ ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct securenet*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct in_addr*) ; 
 struct securenet* FUNC6 (int) ; 
 struct securenet* securenets ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC8 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 char* yp_dir ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,...) ; 

void
FUNC13(void)
{
	FILE *fp;
	char path[MAXPATHLEN + 2];
	char linebuf[1024 + 2];
	struct securenet *tmp;

	/*
	 * If securenets is not NULL, we are being called to reload
	 * the list; free the existing list before re-reading the
	 * securenets file.
	 */
	while (securenets) {
		tmp = securenets->next;
		FUNC4(securenets);
		securenets = tmp;
	}

	FUNC7(path, MAXPATHLEN, "%s/securenets", yp_dir);

	if ((fp = FUNC3(path, "r")) == NULL) {
		if (errno == ENOENT) {
			securenets = FUNC6(sizeof(struct securenet));
			securenets->net.s_addr = INADDR_ANY;
			securenets->mask.s_addr = INADDR_ANY;
			securenets->next = NULL;
			return;
		} else {
			FUNC12("fopen(%s) failed: %s", path, FUNC9(errno));
			FUNC0(1);
		}
	}

	securenets = NULL;

	while (FUNC2(linebuf, LINEBUFSZ, fp)) {
		char addr1[20], addr2[20];

		if ((linebuf[0] == '#')
		    || (FUNC11(linebuf, " \t\r\n") == FUNC10(linebuf)))
			continue;
		if (FUNC8(linebuf, "%s %s", addr1, addr2) < 2) {
			FUNC12("badly formatted securenets entry: %s",
							linebuf);
			continue;
		}

		tmp = FUNC6(sizeof(struct securenet));

		if (!FUNC5((char *)&addr1, (struct in_addr *)&tmp->net)) {
			FUNC12("badly formatted securenets entry: %s", addr1);
			FUNC4(tmp);
			continue;
		}

		if (!FUNC5((char *)&addr2, (struct in_addr *)&tmp->mask)) {
			FUNC12("badly formatted securenets entry: %s", addr2);
			FUNC4(tmp);
			continue;
		}

		tmp->next = securenets;
		securenets = tmp;
	}

	FUNC1(fp);

}