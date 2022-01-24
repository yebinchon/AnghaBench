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
struct sc_info {int dummy; } ;
struct sc_chinfo {int dma_setup; int bps; int /*<<< orphan*/  buffer; int /*<<< orphan*/  dma_chan; struct sc_info* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_chinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct sc_chinfo *ch)
{
    struct sc_info *sc = ch->parent;
    u_int32_t go;

    if (!ch->dma_setup) {
	go = FUNC2(ch, 0);
	FUNC3(sc, FUNC0(ch->dma_chan),
		  FUNC4(ch->buffer));
	FUNC3(sc, FUNC1(ch->dma_chan),
		  FUNC5(ch->buffer) / ch->bps - 1);
	ch->dma_setup = 1;
	FUNC2(ch, go);
    }
}