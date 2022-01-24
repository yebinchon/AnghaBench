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
struct protoent {int p_proto; } ;

/* Variables and functions */
 struct protoent* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(const char *proto)
{
	struct protoent *pent;

	if (FUNC1(proto) == 0)
		return (0);
	pent = FUNC0(proto);
	if (pent == NULL) {
		FUNC2("getprotobyname");
		return (-1);
	}
	return (pent->p_proto);
}