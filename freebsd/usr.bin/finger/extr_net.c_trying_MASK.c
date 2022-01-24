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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; } ;

/* Variables and functions */
 int NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static void
FUNC2(const struct addrinfo *ai)
{
	char buf[NI_MAXHOST];

	if (FUNC0(ai->ai_addr, ai->ai_addrlen, buf, sizeof buf,
			(char *)0, 0, NI_NUMERICHOST) != 0)
		return;		/* XXX can't happen */

	FUNC1("Trying %s...\n", buf);
}