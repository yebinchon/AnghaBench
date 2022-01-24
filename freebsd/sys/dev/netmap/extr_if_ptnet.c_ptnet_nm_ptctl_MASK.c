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
struct ptnet_softc {int /*<<< orphan*/  iomem; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTNET_IO_PTCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC2(struct ptnet_softc *sc, uint32_t cmd)
{
	/*
	 * Write a command and read back error status,
	 * with zero meaning success.
	 */
	FUNC1(sc->iomem, PTNET_IO_PTCTL, cmd);
	return FUNC0(sc->iomem, PTNET_IO_PTCTL);
}