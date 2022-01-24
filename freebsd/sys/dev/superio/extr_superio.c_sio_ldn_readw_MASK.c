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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct siosc {scalar_t__ enable_reg; scalar_t__ current_ldn; int /*<<< orphan*/  io_res; int /*<<< orphan*/  conf_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct siosc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static uint16_t
FUNC4(struct siosc *sc, uint8_t ldn, uint8_t reg)
{
	FUNC1(&sc->conf_lock, MA_OWNED);
	if (reg >= sc->enable_reg) {
		FUNC2(sc, ldn);
		FUNC0(sc->current_ldn == ldn, ("sio_ldn_select failed"));
	}
	return (FUNC3(sc->io_res, reg));
}