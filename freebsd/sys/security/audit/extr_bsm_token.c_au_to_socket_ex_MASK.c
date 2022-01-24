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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ u_short ;
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  token_t ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_port; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  AUT_SOCKET_EX ; 
 int /*<<< orphan*/  AU_IPv4 ; 
 int /*<<< orphan*/  AU_IPv6 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

token_t *
FUNC6(u_short so_domain, u_short so_type,
    struct sockaddr *sa_local, struct sockaddr *sa_remote)
{
	token_t *t;
	u_char *dptr = NULL;
	struct sockaddr_in *sin;
	struct sockaddr_in6 *sin6;

	if (so_domain == AF_INET)
		FUNC3(t, dptr, sizeof(u_char) +
		    5 * sizeof(u_int16_t) + 2 * sizeof(u_int32_t));
	else if (so_domain == AF_INET6)
		FUNC3(t, dptr, sizeof(u_char) +
		    5 * sizeof(u_int16_t) + 8 * sizeof(u_int32_t));
	else
		return (NULL);

	FUNC1(dptr, AUT_SOCKET_EX);
	FUNC2(dptr, FUNC4(so_domain));
	FUNC2(dptr, FUNC5(so_type));
	if (so_domain == AF_INET) {
		FUNC2(dptr, AU_IPv4);
		sin = (struct sockaddr_in *)sa_local;
		FUNC0(dptr, &sin->sin_port, sizeof(uint16_t));
		FUNC0(dptr, &sin->sin_addr.s_addr, sizeof(uint32_t));
		sin = (struct sockaddr_in *)sa_remote;
		FUNC0(dptr, &sin->sin_port, sizeof(uint16_t));
		FUNC0(dptr, &sin->sin_addr.s_addr, sizeof(uint32_t));
	} else {
		FUNC2(dptr, AU_IPv6);
		sin6 = (struct sockaddr_in6 *)sa_local;
		FUNC0(dptr, &sin6->sin6_port, sizeof(uint16_t));
		FUNC0(dptr, &sin6->sin6_addr, 4 * sizeof(uint32_t));
		sin6 = (struct sockaddr_in6 *)sa_remote;
		FUNC0(dptr, &sin6->sin6_port, sizeof(uint16_t));
		FUNC0(dptr, &sin6->sin6_addr, 4 * sizeof(uint32_t));
	}

	return (t);
}