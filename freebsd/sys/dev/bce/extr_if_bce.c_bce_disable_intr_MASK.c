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
struct bce_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCE_PCICFG_INT_ACK_CMD ; 
 int /*<<< orphan*/  BCE_PCICFG_INT_ACK_CMD_MASK_INT ; 
 int /*<<< orphan*/  BCE_VERBOSE_INTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bce_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bce_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bce_softc *sc)
{
	FUNC0(BCE_VERBOSE_INTR);

	FUNC3(sc, BCE_PCICFG_INT_ACK_CMD, BCE_PCICFG_INT_ACK_CMD_MASK_INT);
	FUNC2(sc, BCE_PCICFG_INT_ACK_CMD);

	FUNC1(BCE_VERBOSE_INTR);
}