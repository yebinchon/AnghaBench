#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct isns_req {int dummy; } ;
struct addrinfo {TYPE_1__* ai_addr; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int sa_family; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isns_req*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct isns_req *req, uint32_t tag, struct addrinfo *ai)
{
	struct sockaddr_in *in4;
	struct sockaddr_in6 *in6;
	uint32_t buf;

	switch (ai->ai_addr->sa_family) {
	case AF_INET:
		in4 = (struct sockaddr_in *)(void *)ai->ai_addr;
		FUNC0(&buf, FUNC3(in4->sin_port));
		FUNC1(req, tag, sizeof(buf), &buf);
		break;
	case AF_INET6:
		in6 = (struct sockaddr_in6 *)(void *)ai->ai_addr;
		FUNC0(&buf, FUNC3(in6->sin6_port));
		FUNC1(req, tag, sizeof(buf), &buf);
		break;
	default:
		FUNC2(1, "Unsupported address family %d",
		    ai->ai_addr->sa_family);
	}
}