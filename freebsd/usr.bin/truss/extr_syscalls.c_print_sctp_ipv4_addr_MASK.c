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
struct in_addr {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int INET_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,struct in_addr*,char*,int) ; 

__attribute__((used)) static void
FUNC3(FILE *fp, struct in_addr *addr)
{
	char buf[INET_ADDRSTRLEN];
	const char *s;

	s = FUNC2(AF_INET, addr, buf, INET_ADDRSTRLEN);
	if (s != NULL)
		FUNC0(fp, "{addr=%s}", s);
	else
		FUNC1("{addr=???}", fp);
}