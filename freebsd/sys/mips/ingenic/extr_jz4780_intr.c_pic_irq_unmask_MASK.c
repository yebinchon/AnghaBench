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
typedef  int u_int ;
struct jz4780_pic_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  JZ_ICMCR0 ; 
 int /*<<< orphan*/  JZ_ICMCR1 ; 
 int /*<<< orphan*/  FUNC0 (struct jz4780_pic_softc*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline void
FUNC1(struct jz4780_pic_softc *sc, u_int irq)
{
	if (irq < 32)
		FUNC0(sc, JZ_ICMCR0, (1u << irq));
	else
		FUNC0(sc, JZ_ICMCR1, (1u << (irq - 32)));
}