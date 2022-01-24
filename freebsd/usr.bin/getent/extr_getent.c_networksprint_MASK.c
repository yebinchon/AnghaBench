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
struct netent {int /*<<< orphan*/  n_name; int /*<<< orphan*/  n_aliases; int /*<<< orphan*/  n_addrtype; int /*<<< orphan*/  n_net; } ;
struct in_addr {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct in_addr FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,struct in_addr*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC5(const struct netent *ne)
{
	char		buf[INET6_ADDRSTRLEN];
	struct	in_addr	ianet;

	FUNC0(ne != NULL);
	ianet = FUNC1(ne->n_net, 0);
	if (FUNC2(ne->n_addrtype, &ianet, buf, sizeof(buf)) == NULL)
		FUNC4(buf, "# unknown", sizeof(buf));
	FUNC3(ne->n_aliases, "  ", " ", "%-16s  %s", ne->n_name, buf);
}