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
struct hostent {int /*<<< orphan*/  h_name; int /*<<< orphan*/  h_aliases; int /*<<< orphan*/  h_addr; int /*<<< orphan*/  h_addrtype; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC4(const struct hostent *he)
{
	char	buf[INET6_ADDRSTRLEN];

	FUNC0(he != NULL);
	if (FUNC1(he->h_addrtype, he->h_addr, buf, sizeof(buf)) == NULL)
		FUNC3(buf, "# unknown", sizeof(buf));
	FUNC2(he->h_aliases, "  ", " ", "%-16s  %s", buf, he->h_name);
}