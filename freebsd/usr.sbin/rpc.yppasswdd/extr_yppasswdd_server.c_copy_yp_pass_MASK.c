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
struct TYPE_2__ {int /*<<< orphan*/  pw_fields; int /*<<< orphan*/  pw_shell; int /*<<< orphan*/  pw_dir; int /*<<< orphan*/  pw_gecos; void* pw_expire; void* pw_change; int /*<<< orphan*/  pw_class; void* pw_gid; void* pw_uid; int /*<<< orphan*/  pw_passwd; int /*<<< orphan*/  pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _PWF_CHANGE ; 
 int /*<<< orphan*/  _PWF_CLASS ; 
 int /*<<< orphan*/  _PWF_DIR ; 
 int /*<<< orphan*/  _PWF_EXPIRE ; 
 int /*<<< orphan*/  _PWF_GECOS ; 
 int /*<<< orphan*/  _PWF_GID ; 
 int /*<<< orphan*/  _PWF_NAME ; 
 int /*<<< orphan*/  _PWF_PASSWD ; 
 int /*<<< orphan*/  _PWF_SHELL ; 
 int /*<<< orphan*/  _PWF_UID ; 
 void* FUNC1 (char*) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 char* FUNC4 (char*,int) ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (char*) ; 
 TYPE_1__ yp_password ; 

__attribute__((used)) static void
FUNC7(char *p, int x, int m)
{
	char *t, *s = p;
	static char *buf;

	yp_password.pw_fields = 0;

	buf = FUNC4(buf, m + 10);
	FUNC3(buf, m + 10);

	/* Turn all colons into NULLs */
	while (FUNC5(s, ':')) {
		s = (FUNC5(s, ':') + 1);
		*(s - 1)= '\0';
	}

	t = buf;
#define EXPAND(e) do { \
	e = t; \
	while ((*t++ = *p++)); \
} while (0)
        EXPAND(yp_password.pw_name);
	yp_password.pw_fields |= _PWF_NAME;
        EXPAND(yp_password.pw_passwd);
	yp_password.pw_fields |= _PWF_PASSWD;
	yp_password.pw_uid = FUNC1(p);
        p += (FUNC6(p) + 1);
	yp_password.pw_fields |= _PWF_UID;
	yp_password.pw_gid = FUNC1(p);
        p += (FUNC6(p) + 1);
	yp_password.pw_fields |= _PWF_GID;
	if (x) {
		EXPAND(yp_password.pw_class);
		yp_password.pw_fields |= _PWF_CLASS;
		yp_password.pw_change = FUNC2(p);
		p += (FUNC6(p) + 1);
		yp_password.pw_fields |= _PWF_CHANGE;
		yp_password.pw_expire = FUNC2(p);
		p += (FUNC6(p) + 1);
		yp_password.pw_fields |= _PWF_EXPIRE;
	}
        EXPAND(yp_password.pw_gecos);
	yp_password.pw_fields |= _PWF_GECOS;
        EXPAND(yp_password.pw_dir);
	yp_password.pw_fields |= _PWF_DIR;
        EXPAND(yp_password.pw_shell);
	yp_password.pw_fields |= _PWF_SHELL;

	return;
}