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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 void* host ; 
 int /*<<< orphan*/  kSecProtocolTypeFTP ; 
 int /*<<< orphan*/  kSecProtocolTypeFTPS ; 
 int /*<<< orphan*/  kSecProtocolTypeHTTP ; 
 int /*<<< orphan*/  kSecProtocolTypeHTTPS ; 
 int /*<<< orphan*/  kSecProtocolTypeIMAP ; 
 int /*<<< orphan*/  kSecProtocolTypeIMAPS ; 
 int /*<<< orphan*/  kSecProtocolTypeSMTP ; 
 void* password ; 
 void* path ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  protocol ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 void* username ; 
 void* FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
	char buf[1024];

	while (FUNC3(buf, sizeof(buf), stdin)) {
		char *v;

		if (!FUNC5(buf, "\n"))
			break;
		buf[FUNC6(buf)-1] = '\0';

		v = FUNC4(buf, '=');
		if (!v)
			FUNC1("bad input: %s", buf);
		*v++ = '\0';

		if (!FUNC5(buf, "protocol")) {
			if (!FUNC5(v, "imap"))
				protocol = kSecProtocolTypeIMAP;
			else if (!FUNC5(v, "imaps"))
				protocol = kSecProtocolTypeIMAPS;
			else if (!FUNC5(v, "ftp"))
				protocol = kSecProtocolTypeFTP;
			else if (!FUNC5(v, "ftps"))
				protocol = kSecProtocolTypeFTPS;
			else if (!FUNC5(v, "https"))
				protocol = kSecProtocolTypeHTTPS;
			else if (!FUNC5(v, "http"))
				protocol = kSecProtocolTypeHTTP;
			else if (!FUNC5(v, "smtp"))
				protocol = kSecProtocolTypeSMTP;
			else /* we don't yet handle other protocols */
				FUNC2(0);
		}
		else if (!FUNC5(buf, "host")) {
			char *colon = FUNC4(v, ':');
			if (colon) {
				*colon++ = '\0';
				port = FUNC0(colon);
			}
			host = FUNC7(v);
		}
		else if (!FUNC5(buf, "path"))
			path = FUNC7(v);
		else if (!FUNC5(buf, "username"))
			username = FUNC7(v);
		else if (!FUNC5(buf, "password"))
			password = FUNC7(v);
	}
}