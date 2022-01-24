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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct ipfw_sopt_handler {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int EINVAL ; 
 int /*<<< orphan*/  ctl3_refct ; 
 struct ipfw_sopt_handler* FUNC2 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 

__attribute__((used)) static int
FUNC4(uint16_t opcode, uint8_t version, struct ipfw_sopt_handler *psh)
{
	struct ipfw_sopt_handler *sh;

	FUNC0();
	if ((sh = FUNC2(opcode, version, NULL)) == NULL) {
		FUNC1();
		FUNC3("ipfw: ipfw_ctl3 invalid option %d""v""%d\n",
		    opcode, version);
		return (EINVAL);
	}
	sh->refcnt++;
	ctl3_refct++;
	/* Copy handler data to requested buffer */
	*psh = *sh; 
	FUNC1();

	return (0);
}