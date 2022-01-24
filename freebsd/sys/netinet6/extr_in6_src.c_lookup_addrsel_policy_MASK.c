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
struct sockaddr_in6 {int dummy; } ;
struct in6_addrpolicy {int /*<<< orphan*/  use; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct in6_addrpolicy V_defaultaddrpolicy ; 
 struct in6_addrpolicy* FUNC2 (struct sockaddr_in6*) ; 

__attribute__((used)) static struct in6_addrpolicy *
FUNC3(struct sockaddr_in6 *key)
{
	struct in6_addrpolicy *match = NULL;

	FUNC0();
	match = FUNC2(key);

	if (match == NULL)
		match = &V_defaultaddrpolicy;
	else
		match->use++;
	FUNC1();

	return (match);
}