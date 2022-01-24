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
struct addrinfo {int ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  PF_UNSPEC ; 
 void** bound_sa ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/ * hosts ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int nhosts ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct addrinfo hints, *res = NULL;
	int i;

	if (nhosts == 0)
		return;
	bound_sa = FUNC1(sizeof(*bound_sa) * nhosts);
	FUNC3(&hints, 0, sizeof(hints));
	hints.ai_family = PF_UNSPEC;
	for (i = 0; i < nhosts; i++)  {
		if (FUNC0(hosts[i], NULL, &hints, &res) != 0)
			continue;
		bound_sa[i] = FUNC1(res->ai_addrlen);
		FUNC2(bound_sa[i], res->ai_addr, res->ai_addrlen);
	}
}