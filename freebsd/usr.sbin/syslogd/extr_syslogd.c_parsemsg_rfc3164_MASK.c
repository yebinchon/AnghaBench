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
typedef  scalar_t__ time_t ;
struct tm {int tm_year; int tm_isdst; } ;
struct logtime {struct tm tm; scalar_t__ usec; } ;
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 int /*<<< orphan*/  MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  MAXLINE ; 
 size_t FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  RFC3164_DATEFMT ; 
 int RFC3164_DATELEN ; 
 int /*<<< orphan*/  RemoteAddDate ; 
 scalar_t__ RemoteHostname ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,struct tm*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct logtime const*,char const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct tm*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char**,char const**,char const**) ; 
 size_t FUNC8 (char*) ; 
 char* FUNC9 (char*,int /*<<< orphan*/ ,struct tm*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(const char *from, int pri, char *msg)
{
	struct tm tm_parsed;
	const struct logtime *timestamp;
	struct logtime timestamp_remote;
	const char *app_name, *procid;
	size_t i, msglen;
	char line[MAXLINE + 1];

	/*
	 * Parse the TIMESTAMP provided by the remote side. If none is
	 * found, assume this is not an RFC 3164 formatted message,
	 * only containing a TAG and a MSG.
	 */
	timestamp = NULL;
	if (FUNC9(msg, RFC3164_DATEFMT, &tm_parsed) ==
	    msg + RFC3164_DATELEN && msg[RFC3164_DATELEN] == ' ') {
		msg += RFC3164_DATELEN + 1;
		if (!RemoteAddDate) {
			struct tm tm_now;
			time_t t_now;
			int year;

			/*
			 * As the timestamp does not contain the year
			 * number, daylight saving time information, nor
			 * a time zone, attempt to infer it. Due to
			 * clock skews, the timestamp may even be part
			 * of the next year. Use the last year for which
			 * the timestamp is at most one week in the
			 * future.
			 *
			 * This loop can only run for at most three
			 * iterations before terminating.
			 */
			t_now = FUNC10(NULL);
			FUNC3(&t_now, &tm_now);
			for (year = tm_now.tm_year + 1;; --year) {
				FUNC1(year >= tm_now.tm_year - 1);
				timestamp_remote.tm = tm_parsed;
				timestamp_remote.tm.tm_year = year;
				timestamp_remote.tm.tm_isdst = -1;
				timestamp_remote.usec = 0;
				if (FUNC5(&timestamp_remote.tm) <
				    t_now + 7 * 24 * 60 * 60)
					break;
			}
			timestamp = &timestamp_remote;
		}

		/*
		 * A single space character MUST also follow the HOSTNAME field.
		 */
		msglen = FUNC8(msg);
		for (i = 0; i < FUNC0(MAXHOSTNAMELEN, msglen); i++) {
			if (msg[i] == ' ') {
				if (RemoteHostname) {
					msg[i] = '\0';
					from = msg;
				}
				msg += i + 1;
				break;
			}
			/*
			 * Support non RFC compliant messages, without hostname.
			 */
			if (msg[i] == ':')
				break;
		}
		if (i == FUNC0(MAXHOSTNAMELEN, msglen)) {
			FUNC2("Invalid HOSTNAME from %s: %s\n", from, msg);
			return;
		}
	}

	/* Remove the TAG, if present. */
	FUNC7(&msg, &app_name, &procid);
	FUNC6(msg, line, sizeof(line));
	FUNC4(pri, timestamp, from, app_name, procid, NULL, NULL, line, 0);
}