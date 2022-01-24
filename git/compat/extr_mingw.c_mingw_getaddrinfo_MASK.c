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
struct addrinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char const*,char const*,struct addrinfo const*,struct addrinfo**) ; 

int FUNC2(const char *node, const char *service,
		      const struct addrinfo *hints, struct addrinfo **res)
{
	FUNC0();
	return FUNC1(node, service, hints, res);
}