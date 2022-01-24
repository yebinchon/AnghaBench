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
struct object_id {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 scalar_t__ FUNC2 (char*,struct object_id*,char const**) ; 
 scalar_t__ FUNC3 (char*,char**,int) ; 

__attribute__((used)) static int FUNC4(char *p, int *mode1, int *mode2,
			    struct object_id *oid1, struct object_id *oid2,
			    char *status)
{
	if (*p != ':')
		return FUNC0("expected ':', got '%c'", *p);
	*mode1 = (int)FUNC3(p + 1, &p, 8);
	if (*p != ' ')
		return FUNC0("expected ' ', got '%c'", *p);
	*mode2 = (int)FUNC3(p + 1, &p, 8);
	if (*p != ' ')
		return FUNC0("expected ' ', got '%c'", *p);
	if (FUNC2(++p, oid1, (const char **)&p))
		return FUNC0("expected object ID, got '%s'", p);
	if (*p != ' ')
		return FUNC0("expected ' ', got '%c'", *p);
	if (FUNC2(++p, oid2, (const char **)&p))
		return FUNC0("expected object ID, got '%s'", p);
	if (*p != ' ')
		return FUNC0("expected ' ', got '%c'", *p);
	*status = *++p;
	if (!*status)
		return FUNC0("missing status");
	if (p[1] && !FUNC1(p[1]))
		return FUNC0("unexpected trailer: '%s'", p + 1);
	return 0;
}