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
struct gctl_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gctl_req*) ; 
 struct gctl_req* FUNC1 () ; 
 char* FUNC2 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*) ; 

void
FUNC5(const char *lg_name, const char *attribute)
{
	struct gctl_req *r;
	const char *errstr;

	r = FUNC1();
	FUNC3(r, "class", -1, "PART");
	FUNC3(r, "arg0", -1, lg_name);
	FUNC3(r, "flags", -1, "C");
	FUNC3(r, "verb", -1, "set");
	FUNC3(r, "attrib", -1, attribute);

	errstr = FUNC2(r);
	if (errstr != NULL && errstr[0] != '\0') 
		FUNC4("Error", "Error setting parameter on disk:",
		    errstr);
	FUNC0(r);
}