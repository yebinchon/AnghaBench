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
typedef  int /*<<< orphan*/  uint32_t ;
struct in6_addr {int dummy; } ;
struct sockaddr_in6 {int sin6_len; int /*<<< orphan*/  sin6_scope_id; struct in6_addr sin6_addr; int /*<<< orphan*/  sin6_family; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  dst_sa ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_in6*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct ifnet*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sockaddr_in6*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ifnet**,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_in6*,int /*<<< orphan*/ ) ; 

int
FUNC4(uint32_t fibnum, const struct in6_addr *dst,
    uint32_t scopeid, struct ifnet *ifp, struct in6_addr *srcp,
    int *hlim)
{
	struct ifnet *retifp;
	struct sockaddr_in6 dst_sa;
	int error;

	retifp = ifp;
	FUNC0(&dst_sa, sizeof(dst_sa));
	dst_sa.sin6_family = AF_INET6;
	dst_sa.sin6_len = sizeof(dst_sa);
	dst_sa.sin6_addr = *dst;
	dst_sa.sin6_scope_id = scopeid;
	FUNC3(&dst_sa, 0);

	error = FUNC2(fibnum, &dst_sa, NULL, NULL, NULL, &retifp, srcp);
	if (hlim != NULL)
		*hlim = FUNC1(NULL, retifp);

	return (error);
}