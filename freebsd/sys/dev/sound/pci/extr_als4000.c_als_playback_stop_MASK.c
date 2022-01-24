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
typedef  int u_int32_t ;
struct sc_info {int dummy; } ;
struct sc_chinfo {int dma_active; int /*<<< orphan*/  format; struct sc_info* parent; } ;
struct playback_command {int /*<<< orphan*/  dma_stop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sc_info*,int /*<<< orphan*/ ) ; 
 struct playback_command* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct sc_chinfo *ch)
{
	const struct playback_command *p;
	struct sc_info *sc = ch->parent;
	u_int32_t active;

	active = ch->dma_active;
	if (active) {
		p = FUNC1(ch->format);
		FUNC0(sc, p->dma_stop);
	}
	ch->dma_active = 0;
	return active;
}