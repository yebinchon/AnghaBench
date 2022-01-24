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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct isns_req {int dummy; } ;
struct addrinfo {TYPE_1__* ai_addr; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int sa_family; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 (struct isns_req*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(struct isns_req *req, uint32_t tag, struct addrinfo *ai)
{
	struct sockaddr_in *in4;
	struct sockaddr_in6 *in6;
	uint8_t buf[16];

	switch (ai->ai_addr->sa_family) {
	case AF_INET:
		in4 = (struct sockaddr_in *)(void *)ai->ai_addr;
		FUNC3(buf, 0, 10);
		buf[10] = 0xff;
		buf[11] = 0xff;
		FUNC2(&buf[12], &in4->sin_addr, sizeof(in4->sin_addr));
		FUNC0(req, tag, sizeof(buf), buf);
		break;
	case AF_INET6:
		in6 = (struct sockaddr_in6 *)(void *)ai->ai_addr;
		FUNC0(req, tag, sizeof(in6->sin6_addr), &in6->sin6_addr);
		break;
	default:
		FUNC1(1, "Unsupported address family %d",
		    ai->ai_addr->sa_family);
	}
}