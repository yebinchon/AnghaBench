#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int reg; } ;

/* Variables and functions */
 int PIRQ_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 TYPE_1__* pirqs ; 

int
FUNC2(int pin)
{
	FUNC0(pin > 0 && pin <= FUNC1(pirqs));
	return (pirqs[pin - 1].reg & PIRQ_IRQ);
}