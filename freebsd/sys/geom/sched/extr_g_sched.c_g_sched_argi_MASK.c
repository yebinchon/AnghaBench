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
typedef  int /*<<< orphan*/  param ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,char*,int) ; 
 char* FUNC1 (struct gctl_req*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char const*,int) ; 

__attribute__((used)) static const char *
FUNC5(struct gctl_req *req, int i)
{
	static const char *dev_prefix = "/dev/";
	const char *name;
	char param[16];
	int l = FUNC3(dev_prefix);

	FUNC2(param, sizeof(param), "arg%d", i);
	name = FUNC1(req, param);
	if (name == NULL)
		FUNC0(req, "No 'arg%d' argument", i);
	else if (FUNC4(name, dev_prefix, l) == 0)
		name += l;
	return (name);
}