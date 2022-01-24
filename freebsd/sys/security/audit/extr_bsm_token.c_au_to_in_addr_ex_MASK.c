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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  token_t ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct in6_addr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AUT_IN_ADDR_EX ; 
 int /*<<< orphan*/  AU_IPv6 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

token_t *
FUNC4(struct in6_addr *internet_addr)
{
	token_t *t;
	u_char *dptr = NULL;
	u_int32_t type = AU_IPv6;

	FUNC3(t, dptr, sizeof(u_char) + 5 * sizeof(uint32_t));

	FUNC1(dptr, AUT_IN_ADDR_EX);
	FUNC2(dptr, type);
	FUNC0(dptr, internet_addr, 4 * sizeof(uint32_t));

	return (t);
}