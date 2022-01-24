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
typedef  int /*<<< orphan*/  u32 ;
struct cpu_reg {int /*<<< orphan*/  mode; int /*<<< orphan*/  state_value_clear; int /*<<< orphan*/  state; int /*<<< orphan*/  mode_value_halt; } ;
struct bce_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCE_VERBOSE_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bce_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bce_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bce_softc *sc, struct cpu_reg *cpu_reg)
{
	u32 val;

	FUNC0(BCE_VERBOSE_RESET);

	/* Start the CPU. */
	val = FUNC2(sc, cpu_reg->mode);
	val &= ~cpu_reg->mode_value_halt;
	FUNC3(sc, cpu_reg->state, cpu_reg->state_value_clear);
	FUNC3(sc, cpu_reg->mode, val);

	FUNC1(BCE_VERBOSE_RESET);
}