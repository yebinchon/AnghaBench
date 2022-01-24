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
struct sc_chinfo {int phys_buf; int bps; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int CMI_INTR_PER_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (struct sc_info*,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct sc_info *sc, struct sc_chinfo *ch, u_int32_t base)
{
	u_int32_t s, i, sz;

	ch->phys_buf = FUNC1(ch->buffer);

	FUNC0(sc, base, ch->phys_buf, 4);
	sz = (u_int32_t)FUNC2(ch->buffer);

	s = sz / ch->bps - 1;
	FUNC0(sc, base + 4, s, 2);

	i = sz / (ch->bps * CMI_INTR_PER_BUFFER) - 1;
	FUNC0(sc, base + 6, i, 2);
}