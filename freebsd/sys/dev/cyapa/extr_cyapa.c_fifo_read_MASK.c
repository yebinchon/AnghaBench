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
struct cyapa_fifo {size_t rindex; char* buf; } ;

/* Variables and functions */
 size_t CYAPA_BUFMASK ; 
 size_t CYAPA_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct cyapa_softc*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static char *
FUNC2(struct cyapa_softc *sc, struct cyapa_fifo *fifo, size_t n)
{
	char *ptr;

	FUNC0(sc);
	if (n > (CYAPA_BUFSIZE - (fifo->rindex & CYAPA_BUFMASK))) {
		FUNC1("fifo_read: overflow\n");
		return (fifo->buf);
	}
	ptr = fifo->buf + (fifo->rindex & CYAPA_BUFMASK);
	fifo->rindex += n;

	return (ptr);
}