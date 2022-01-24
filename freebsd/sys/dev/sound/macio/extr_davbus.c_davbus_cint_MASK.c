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
struct davbus_softc {int (* read_status ) (struct davbus_softc*,int) ;int /*<<< orphan*/  mutex; int /*<<< orphan*/  reg; int /*<<< orphan*/  (* set_outputs ) (struct davbus_softc*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DAVBUS_CODEC_STATUS ; 
 int DAVBUS_PORTCHG ; 
 int /*<<< orphan*/  DAVBUS_SOUND_CTRL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct davbus_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct davbus_softc*,int) ; 

__attribute__((used)) static void 
FUNC6(void *ptr)
{
	struct davbus_softc *d = ptr;
	u_int	reg, status, mask;

	FUNC2(&d->mutex);

	reg = FUNC0(d->reg, DAVBUS_SOUND_CTRL);
	if (reg & DAVBUS_PORTCHG) {
		
		status = FUNC0(d->reg, DAVBUS_CODEC_STATUS);
		
		if (d->read_status && d->set_outputs) {

			mask = (*d->read_status)(d, status);
			(*d->set_outputs)(d, mask);
		}

		/* Clear the interrupt. */
		FUNC1(d->reg, DAVBUS_SOUND_CTRL, reg);
	}

	FUNC3(&d->mutex);
}