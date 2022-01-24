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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  user_name ;
struct passwd {char* pw_name; char* pw_gecos; int /*<<< orphan*/ * pw_dir; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NameDisplay ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *,int) ; 

struct passwd *FUNC5(int uid)
{
	static unsigned initialized;
	static char user_name[100];
	static struct passwd *p;
	wchar_t buf[100];
	DWORD len;

	if (initialized)
		return p;

	len = FUNC0(buf);
	if (!FUNC1(buf, &len)) {
		initialized = 1;
		return NULL;
	}

	if (FUNC4(user_name, buf, sizeof(user_name)) < 0) {
		initialized = 1;
		return NULL;
	}

	p = FUNC3(sizeof(*p));
	p->pw_name = user_name;
	p->pw_gecos = FUNC2(NameDisplay);
	if (!p->pw_gecos)
		p->pw_gecos = "unknown";
	p->pw_dir = NULL;

	initialized = 1;
	return p;
}