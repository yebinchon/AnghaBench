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
struct sc_chinfo {scalar_t__ dir; scalar_t__ dma_active; int speed; struct sc_info* parent; } ;
struct sc_info {struct sc_chinfo pch; struct sc_chinfo rch; } ;

/* Variables and functions */
 int ALS_ESP_SAMPLE_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCMDIR_PLAY ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

__attribute__((used)) static void
FUNC3(struct sc_chinfo *ch)
{
	struct sc_info *sc = ch->parent;
	struct sc_chinfo *other;

	other = (ch->dir == PCMDIR_PLAY) ? &sc->rch : &sc->pch;
	if (other->dma_active == 0) {
		FUNC1(sc, ALS_ESP_SAMPLE_RATE);
		FUNC1(sc, ch->speed >> 8);
		FUNC1(sc, ch->speed & 0xff);
	} else {
		FUNC0(FUNC2("speed locked at %d (tried %d)\n",
			   other->speed, ch->speed));
	}
}