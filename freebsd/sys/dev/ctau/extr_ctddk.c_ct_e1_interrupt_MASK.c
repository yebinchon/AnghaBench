#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ chan; int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ ct_board_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char E1SR_E0_IRQ1 ; 
 unsigned char E1SR_E1_IRQ1 ; 
 unsigned char E1SR_SCC_IRQ ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 unsigned char FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4 (ct_board_t *b)
{
	unsigned char sr;

	sr = FUNC3 (FUNC0(b->port));

	if (sr & E1SR_SCC_IRQ) FUNC2 (b);
	if (sr & E1SR_E0_IRQ1) FUNC1 (b->chan + 0);
	if (sr & E1SR_E1_IRQ1) FUNC1 (b->chan + 1);
}