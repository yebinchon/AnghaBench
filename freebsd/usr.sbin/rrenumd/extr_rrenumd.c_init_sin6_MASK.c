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
struct sockaddr_in6 {int sin6_len; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in6*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct sockaddr_in6 *sin6, const char *addr_ascii)
{
	FUNC1(sin6, 0, sizeof(*sin6));
	sin6->sin6_len = sizeof(*sin6);
	sin6->sin6_family = AF_INET6;
	if (FUNC0(AF_INET6, addr_ascii, &sin6->sin6_addr) != 1)
		; /* XXX do something */
}