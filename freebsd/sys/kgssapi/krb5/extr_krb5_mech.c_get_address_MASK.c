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
struct krb5_address {int /*<<< orphan*/  ka_addr; int /*<<< orphan*/  ka_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const**,size_t*) ; 

__attribute__((used)) static void
FUNC2(const uint8_t **pp, size_t *lenp, struct krb5_address *ka)
{

	ka->ka_type = FUNC1(pp, lenp);
	FUNC0(pp, lenp, &ka->ka_addr);
}