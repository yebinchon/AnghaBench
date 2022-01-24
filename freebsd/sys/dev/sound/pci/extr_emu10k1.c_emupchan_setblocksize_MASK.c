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
typedef  int /*<<< orphan*/  u_int32_t ;
struct sc_pchinfo {int spd; int /*<<< orphan*/  buffer; int /*<<< orphan*/  blksz; struct sc_info* parent; } ;
struct sc_info {int timerinterval; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int32_t
FUNC4(kobj_t obj, void *data, u_int32_t blocksize)
{
	struct sc_pchinfo *ch = data;
	struct sc_info *sc = ch->parent;
	int irqrate, blksz;

	ch->blksz = blocksize;
	FUNC1(sc->lock);
	FUNC0(sc);
	irqrate = 48000 / sc->timerinterval;
	FUNC2(sc->lock);
	blksz = (ch->spd * FUNC3(ch->buffer)) / irqrate;
	return blocksize;
}