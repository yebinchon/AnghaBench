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
typedef  scalar_t__ uint32_t ;
struct softdma_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ AVALON_FIFO_TX_BASIC_OPTS_DEPTH ; 
 scalar_t__ FUNC0 (struct softdma_softc*) ; 

__attribute__((used)) static uint32_t
FUNC1(struct softdma_softc *sc)
{
	uint32_t val;

	do
		val = FUNC0(sc);
	while (val == AVALON_FIFO_TX_BASIC_OPTS_DEPTH);

	return (val);
}