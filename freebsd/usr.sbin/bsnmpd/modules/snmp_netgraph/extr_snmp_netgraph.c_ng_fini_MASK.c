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
struct ngtype {int dummy; } ;

/* Variables and functions */
 struct ngtype* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ngtype*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  csock ; 
 int /*<<< orphan*/ * csock_fd ; 
 int /*<<< orphan*/  dsock ; 
 int /*<<< orphan*/ * dsock_fd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ngtype*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  ngtype_list ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reg_index ; 
 struct ngtype* snmp_nodename ; 

__attribute__((used)) static int
FUNC6(void)
{
	struct ngtype *t;

	while ((t = FUNC0(&ngtype_list)) != NULL) {
		FUNC1(&ngtype_list, t, link);
		FUNC4(t);
	}

	if (csock_fd != NULL)
		FUNC3(csock_fd);
	(void)FUNC2(csock);

	if (dsock_fd != NULL)
		FUNC3(dsock_fd);
	(void)FUNC2(dsock);

	FUNC4(snmp_nodename);

	FUNC5(reg_index);

	return (0);
}