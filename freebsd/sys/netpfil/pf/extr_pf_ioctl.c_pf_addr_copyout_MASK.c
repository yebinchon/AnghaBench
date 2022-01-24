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
struct pf_addr_wrap {int type; } ;

/* Variables and functions */
#define  PF_ADDR_DYNIFTL 129 
#define  PF_ADDR_TABLE 128 
 int /*<<< orphan*/  FUNC0 (struct pf_addr_wrap*) ; 
 int /*<<< orphan*/  FUNC1 (struct pf_addr_wrap*) ; 

__attribute__((used)) static void
FUNC2(struct pf_addr_wrap *addr)
{

	switch (addr->type) {
	case PF_ADDR_DYNIFTL:
		FUNC1(addr);
		break;
	case PF_ADDR_TABLE:
		FUNC0(addr);
		break;
	}
}