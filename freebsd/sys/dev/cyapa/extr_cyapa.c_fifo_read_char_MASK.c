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
struct cyapa_softc {int dummy; } ;
struct cyapa_fifo {size_t rindex; size_t windex; scalar_t__* buf; } ;

/* Variables and functions */
 size_t CYAPA_BUFMASK ; 
 int /*<<< orphan*/  FUNC0 (struct cyapa_softc*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static uint8_t
FUNC2(struct cyapa_softc *sc, struct cyapa_fifo *fifo)
{
	uint8_t c;

	FUNC0(sc);

	if (fifo->rindex == fifo->windex) {
		FUNC1("fifo_read_char: overflow\n");
		c = 0;
	} else {
		c = fifo->buf[fifo->rindex & CYAPA_BUFMASK];
		++fifo->rindex;
	}
	return (c);
}