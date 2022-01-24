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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  token_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AUT_SOCKINET32 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

token_t *
FUNC4(struct sockaddr_in *so)
{
	token_t *t;
	u_char *dptr = NULL;
	uint16_t family;

	FUNC3(t, dptr, sizeof(u_char) + 2 * sizeof(uint16_t) +
	    sizeof(uint32_t));

	FUNC1(dptr, AUT_SOCKINET32);
	/*
	 * BSM defines the family field as 16 bits, but many operating
	 * systems have an 8-bit sin_family field.  Extend to 16 bits before
	 * writing into the token.  Assume that both the port and the address
	 * in the sockaddr_in are already in network byte order, but family
	 * is in local byte order.
	 *
	 * XXXRW: Should a name space conversion be taking place on the value
	 * of sin_family?
	 */
	family = so->sin_family;
	FUNC2(dptr, family);
	FUNC0(dptr, &so->sin_port, sizeof(uint16_t));
	FUNC0(dptr, &so->sin_addr.s_addr, sizeof(uint32_t));

	return (t);
}