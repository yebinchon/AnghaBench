#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct sfxge_softc {scalar_t__ buffer_table_next; int /*<<< orphan*/  enp; } ;
struct TYPE_2__ {scalar_t__ enc_buftbl_limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(struct sfxge_softc *sc, size_t n, uint32_t *idp)
{
	FUNC0(sc->buffer_table_next + n <=
		FUNC1(sc->enp)->enc_buftbl_limit,
		("buffer table full"));

	*idp = sc->buffer_table_next;
	sc->buffer_table_next += n;
}