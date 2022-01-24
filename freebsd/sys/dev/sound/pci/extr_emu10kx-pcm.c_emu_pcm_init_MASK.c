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
struct emu_pcm_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  bufsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMUPAGESIZE ; 
 int /*<<< orphan*/  EMU_MAX_BUFSZ ; 
 int /*<<< orphan*/  EMU_REC_BUFSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct emu_pcm_info *sc)
{
	sc->bufsz = FUNC0(sc->dev, EMUPAGESIZE, EMU_REC_BUFSZ, EMU_MAX_BUFSZ);
	return (0);
}