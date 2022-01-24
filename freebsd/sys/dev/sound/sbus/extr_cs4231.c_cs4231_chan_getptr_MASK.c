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
typedef  scalar_t__ u_int32_t ;
struct cs4231_softc {int sc_flags; } ;
struct cs4231_channel {scalar_t__ dir; int /*<<< orphan*/  buffer; struct cs4231_softc* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  APC_CVA ; 
 int /*<<< orphan*/  APC_PVA ; 
 scalar_t__ FUNC0 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cs4231_softc*) ; 
 int CS4231_SBUS ; 
 int /*<<< orphan*/  FUNC2 (struct cs4231_softc*) ; 
 scalar_t__ FUNC3 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EBDMA_DADDR ; 
 scalar_t__ FUNC4 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ PCMDIR_PLAY ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int32_t
FUNC7(kobj_t obj, void *data)
{
	struct cs4231_softc *sc;
	struct cs4231_channel *ch;
	u_int32_t cur, ptr, sz;

	ch = data;
	sc = ch->parent;

	FUNC1(sc);
	if ((sc->sc_flags & CS4231_SBUS) != 0)
		cur = (ch->dir == PCMDIR_PLAY) ? FUNC0(sc, APC_PVA) :
		    FUNC0(sc, APC_CVA);
	else
		cur = (ch->dir == PCMDIR_PLAY) ? FUNC4(sc, EBDMA_DADDR) :
			FUNC3(sc, EBDMA_DADDR);
	sz = FUNC6(ch->buffer);
	ptr = cur - FUNC5(ch->buffer) + sz;
	FUNC2(sc);

	ptr %= sz;
	return (ptr);
}