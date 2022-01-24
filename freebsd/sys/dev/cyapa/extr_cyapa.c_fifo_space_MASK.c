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
struct cyapa_softc {int dummy; } ;
struct cyapa_fifo {size_t windex; size_t rindex; } ;

/* Variables and functions */
 size_t CYAPA_BUFMASK ; 
 size_t CYAPA_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct cyapa_softc*) ; 

__attribute__((used)) static size_t
FUNC1(struct cyapa_softc *sc, struct cyapa_fifo *fifo)
{
	size_t n;

	FUNC0(sc);

	n = CYAPA_BUFSIZE - (fifo->windex & CYAPA_BUFMASK);
	if (n > (size_t)(CYAPA_BUFSIZE - (fifo->windex - fifo->rindex)))
		n = (size_t)(CYAPA_BUFSIZE - (fifo->windex - fifo->rindex));
	return (n);
}