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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  token_t ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AUT_SOCKINET128 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

token_t *
FUNC4(struct sockaddr_in6 *so)
{
	token_t *t;
	u_char *dptr = NULL;

	FUNC3(t, dptr, 3 * sizeof(u_char) + sizeof(u_int16_t) +
	    4 * sizeof(u_int32_t));

	FUNC1(dptr, AUT_SOCKINET128);
	/*
	 * In BSD, sin6_family is one octet, but BSM defines the token to
	 * store two. So we copy in a 0 first.  XXXRW: Possibly should be
	 * conditionally compiled.
	 */
	FUNC1(dptr, 0);
	FUNC1(dptr, so->sin6_family);

	FUNC2(dptr, so->sin6_port);
	FUNC0(dptr, &so->sin6_addr, 4 * sizeof(uint32_t));

	return (t);
}