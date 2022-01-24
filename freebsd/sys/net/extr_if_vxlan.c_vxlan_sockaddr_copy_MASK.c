#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int sin6_len; } ;
struct TYPE_4__ {int sin_len; } ;
union vxlan_sockaddr {TYPE_1__ in6; TYPE_2__ in4; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (union vxlan_sockaddr*,int) ; 
 TYPE_2__* FUNC2 (struct sockaddr const*) ; 
 TYPE_1__* FUNC3 (struct sockaddr const*) ; 

__attribute__((used)) static void
FUNC4(union vxlan_sockaddr *vxladdr,
    const struct sockaddr *sa)
{

	FUNC0(sa->sa_family == AF_INET || sa->sa_family == AF_INET6);
	FUNC1(vxladdr, sizeof(*vxladdr));

	if (sa->sa_family == AF_INET) {
		vxladdr->in4 = *FUNC2(sa);
		vxladdr->in4.sin_len = sizeof(struct sockaddr_in);
	} else if (sa->sa_family == AF_INET6) {
		vxladdr->in6 = *FUNC3(sa);
		vxladdr->in6.sin6_len = sizeof(struct sockaddr_in6);
	}
}