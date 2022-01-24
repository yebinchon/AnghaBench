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
struct bktr_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_INTS_DISABLED ; 
 int /*<<< orphan*/  BKTR_GPIO_DMA_CTL ; 
 int /*<<< orphan*/  BKTR_INT_MASK ; 
 int /*<<< orphan*/  FIFO_RISC_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct bktr_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bktr_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bktr_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3( device_t dev )
{
	struct bktr_softc *bktr = FUNC2(dev);

	/* Disable the brooktree device */
	FUNC0(bktr, BKTR_INT_MASK, ALL_INTS_DISABLED);
	FUNC1(bktr, BKTR_GPIO_DMA_CTL, FIFO_RISC_DISABLED);

	return 0;
}