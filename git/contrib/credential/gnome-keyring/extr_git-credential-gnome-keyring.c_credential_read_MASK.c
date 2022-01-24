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
struct credential {char* password; void* username; void* path; int /*<<< orphan*/  port; void* host; void* protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 size_t FUNC10 (char*) ; 
 char* FUNC11 (void*,char) ; 

__attribute__((used)) static int FUNC12(struct credential *c)
{
	char *buf;
	size_t line_len;
	char *key;
	char *value;

	key = buf = FUNC5(1024);

	while (FUNC1(buf, 1024, stdin)) {
		line_len = FUNC10(buf);

		if (line_len && buf[line_len-1] == '\n')
			buf[--line_len] = '\0';

		if (!line_len)
			break;

		value = FUNC8(buf, '=');
		if (!value) {
			FUNC4("invalid credential line: %s", key);
			FUNC6(buf);
			return -1;
		}
		*value++ = '\0';

		if (!FUNC9(key, "protocol")) {
			FUNC2(c->protocol);
			c->protocol = FUNC3(value);
		} else if (!FUNC9(key, "host")) {
			FUNC2(c->host);
			c->host = FUNC3(value);
			value = FUNC11(c->host, ':');
			if (value) {
				*value++ = '\0';
				c->port = FUNC0(value);
			}
		} else if (!FUNC9(key, "path")) {
			FUNC2(c->path);
			c->path = FUNC3(value);
		} else if (!FUNC9(key, "username")) {
			FUNC2(c->username);
			c->username = FUNC3(value);
		} else if (!FUNC9(key, "password")) {
			FUNC6(c->password);
			c->password = FUNC7(value);
			while (*value)
				*value++ = '\0';
		}
		/*
		 * Ignore other lines; we don't know what they mean, but
		 * this future-proofs us when later versions of git do
		 * learn new lines, and the helpers are updated to match.
		 */
	}

	FUNC6(buf);

	return 0;
}