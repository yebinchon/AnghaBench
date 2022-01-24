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
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  alias ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,int) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static int
FUNC6(char *dev)
{
	char alias[64];
	phandle_t aliases;
	int len;
	const char *p;

	FUNC3(alias, dev);
	if ((aliases = FUNC0("/aliases")) != -1)
		(void)FUNC1(aliases, dev, alias, sizeof(alias));
	len = FUNC4(alias);
	if ((p = FUNC5(alias, ':')) == NULL)
		return (0);
	p++;
	if (p - alias == len - 1 && (*p == 'a' || *p == 'b'))
		return (*p - 'a' + 1);
	if (FUNC2(p, "ssp") == 0)
		return (1);
	return (0);
}