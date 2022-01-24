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
struct machfb_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIFO_STAT ; 
 int FUNC0 (struct machfb_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC1(struct machfb_softc *sc, uint8_t v)
{

	while ((FUNC0(sc, FIFO_STAT) & 0xffff) > (0x8000 >> v))
		;
}