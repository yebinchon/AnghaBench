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
struct au_info {scalar_t__ interrupts; int unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  AU_REG_IRQEN ; 
 int /*<<< orphan*/  AU_REG_IRQSRC ; 
 int /*<<< orphan*/  AU_REG_UNK1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct au_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int
FUNC3(struct au_info *au)
{
	FUNC1(au, 0, AU_REG_UNK1, 0x80001000, 4);
	FUNC1(au, 0, AU_REG_IRQEN, 0x00001030, 4);
	FUNC1(au, 0, AU_REG_IRQSRC, 0x000007ff, 4);
	FUNC0(1000000);
	if (au->interrupts==0) FUNC2("pcm%d: irq test failed\n", au->unit);
	/* this apparently generates an irq */
	return 0;
}