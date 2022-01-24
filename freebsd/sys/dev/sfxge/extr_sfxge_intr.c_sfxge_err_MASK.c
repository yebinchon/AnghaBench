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
struct sfxge_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  efsys_identifier_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/ * __sfxge_err ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(efsys_identifier_t *arg, unsigned int code, uint32_t dword0,
	  uint32_t dword1)
{
	struct sfxge_softc *sc = (struct sfxge_softc *)arg;
	device_t dev = sc->dev;

	FUNC2(LOG_WARNING, "[%s%d] FATAL ERROR: %s (0x%08x%08x)",
	    FUNC0(dev), FUNC1(dev),
		__sfxge_err[code], dword1, dword0);
}