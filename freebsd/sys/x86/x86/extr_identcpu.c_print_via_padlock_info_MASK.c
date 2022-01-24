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
typedef  int /*<<< orphan*/  u_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2(void)
{
	u_int regs[4];

	FUNC0(0xc0000001, regs);
	FUNC1("\n  VIA Padlock Features=0x%b", regs[3],
	"\020"
	"\003RNG"		/* RNG */
	"\007AES"		/* ACE */
	"\011AES-CTR"		/* ACE2 */
	"\013SHA1,SHA256"	/* PHE */
	"\015RSA"		/* PMM */
	);
}