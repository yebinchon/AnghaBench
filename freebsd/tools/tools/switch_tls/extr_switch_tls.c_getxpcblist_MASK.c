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
struct xinpgen {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 struct xinpgen* FUNC2 (size_t) ; 
 int FUNC3 (char const*,struct xinpgen*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct xinpgen *
FUNC4(const char *name)
{
	struct xinpgen *xinp;
	size_t len;
	int rv;

	len = 0;
	rv = FUNC3(name, NULL, &len, NULL, 0);
	if (rv == -1)
		FUNC0(1, "sysctlbyname %s", name);

	if (len == 0)
		FUNC1(1, "%s is empty", name);

	xinp = FUNC2(len);
	if (xinp == NULL)
		FUNC1(1, "malloc failed");

	rv = FUNC3(name, xinp, &len, NULL, 0);
	if (rv == -1)
		FUNC0(1, "sysctlbyname %s", name);

	return (xinp);
}