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
typedef  int /*<<< orphan*/  uint32_t ;
struct tsec_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TSEC_MACCFG1_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct tsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSEC_REG_MACCFG1 ; 
 int /*<<< orphan*/  FUNC1 (struct tsec_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct tsec_softc *sc)
{
	uint32_t maccfg1_flags;

	/* Set soft reset bit */
	maccfg1_flags = FUNC0(sc, TSEC_REG_MACCFG1);
	maccfg1_flags |= TSEC_MACCFG1_SOFT_RESET;
	FUNC1(sc, TSEC_REG_MACCFG1, maccfg1_flags);

	/* Clear soft reset bit */
	maccfg1_flags = FUNC0(sc, TSEC_REG_MACCFG1);
	maccfg1_flags &= ~TSEC_MACCFG1_SOFT_RESET;
	FUNC1(sc, TSEC_REG_MACCFG1, maccfg1_flags);
}