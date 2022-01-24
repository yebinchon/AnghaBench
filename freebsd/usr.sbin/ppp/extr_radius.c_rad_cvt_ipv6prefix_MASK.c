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
typedef  int /*<<< orphan*/  uint8_t ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (size_t const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t const) ; 

__attribute__((used)) static uint8_t *
FUNC3(const void *data, size_t len)
{
	const size_t ipv6len = sizeof(struct in6_addr) + 2;
	uint8_t *s;

	if (len > ipv6len)
		return NULL;
	s = FUNC0(ipv6len);
	if (s != NULL) {
		FUNC2(s, 0, ipv6len);
		FUNC1(s, data, len);
	}
	return s;
}