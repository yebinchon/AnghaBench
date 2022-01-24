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
struct inpcb {int inp_flags2; } ;

/* Variables and functions */
 int INP_PCBGROUPWILD ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 

__attribute__((used)) static void
FUNC3(struct inpcb *inp)
{
	int wildcard_needed;

	wildcard_needed = FUNC1(inp);
	if (wildcard_needed && !(inp->inp_flags2 & INP_PCBGROUPWILD))
		FUNC0(inp);
	else if (!wildcard_needed && (inp->inp_flags2 & INP_PCBGROUPWILD))
		FUNC2(inp);
}