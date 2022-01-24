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
typedef  int /*<<< orphan*/  zone ;
struct url_stat {int dummy; } ;
struct url {char* scheme; char* host; int /*<<< orphan*/  port; } ;
struct dns_srvinfo {struct dns_srvinfo* next; int /*<<< orphan*/  port; int /*<<< orphan*/  host; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  MIRROR_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const**) ; 
 struct dns_srvinfo* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct url* FUNC5 (char const*) ; 
 int /*<<< orphan*/ * FUNC6 (struct url*,struct url_stat*,char*) ; 
 scalar_t__ FUNC7 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 scalar_t__ FUNC17 (int,char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC18(const char *url, char *path)
{
	struct url *u;
	struct dns_srvinfo *mirrors, *current;
	struct url_stat st;
	FILE *remote;
	/* To store _https._tcp. + hostname + \0 */
	int fd;
	int retry, max_retry;
	ssize_t r;
	char buf[10240];
	char zone[MAXHOSTNAMELEN + 13];
	static const char *mirror_type = NULL;

	max_retry = 3;
	current = mirrors = NULL;
	remote = NULL;

	if (mirror_type == NULL && FUNC1(MIRROR_TYPE, &mirror_type)
	    != 0) {
		FUNC16("No MIRROR_TYPE defined");
		return (-1);
	}

	if ((fd = FUNC8(path)) == -1) {
		FUNC15("mkstemp()");
		return (-1);
	}

	retry = max_retry;

	if ((u = FUNC5(url)) == NULL) {
		FUNC15("fetchParseURL('%s')", url);
		return (-1);
	}

	while (remote == NULL) {
		if (retry == max_retry) {
			if (FUNC12(u->scheme, "file") != 0 &&
			    FUNC11(mirror_type, "srv") == 0) {
				FUNC10(zone, sizeof(zone),
				    "_%s._tcp.%s", u->scheme, u->host);
				mirrors = FUNC2(zone);
				current = mirrors;
			}
		}

		if (mirrors != NULL) {
			FUNC13(u->host, current->host, sizeof(u->host));
			u->port = current->port;
		}

		remote = FUNC6(u, &st, "");
		if (remote == NULL) {
			--retry;
			if (retry <= 0)
				goto fetchfail;
			if (mirrors == NULL) {
				FUNC9(1);
			} else {
				current = current->next;
				if (current == NULL)
					current = mirrors;
			}
		}
	}

	while ((r = FUNC7(buf, 1, sizeof(buf), remote)) > 0) {
		if (FUNC17(fd, buf, r) != r) {
			FUNC15("write()");
			goto fetchfail;
		}
	}

	if (r != 0) {
		FUNC15("An error occurred while fetching pkg(8)");
		goto fetchfail;
	}

	if (FUNC4(remote))
		goto fetchfail;

	goto cleanup;

fetchfail:
	if (fd != -1) {
		FUNC0(fd);
		fd = -1;
		FUNC14(path);
	}

cleanup:
	if (remote != NULL)
		FUNC3(remote);

	return fd;
}