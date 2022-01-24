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
struct sc_info {int bufsz; } ;
struct sc_chinfo {int blksz; scalar_t__ dma_setup; int /*<<< orphan*/  buffer; struct sc_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (struct sc_chinfo*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_chinfo*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static u_int32_t
FUNC6(kobj_t obj, void *data, u_int32_t blocksize)
{
    struct sc_chinfo *ch = data;
    struct sc_info *sc = ch->parent;
    u_int32_t go;

    go = FUNC2(ch, 0);

    /* 2 interrupts are possible and used in buffer (half-empty,empty),
     * hence factor of 2. */
    ch->blksz = FUNC1(blocksize, sc->bufsz / 2);
    FUNC5(ch->buffer, 2, ch->blksz);
    ch->dma_setup = 0;
    FUNC3(ch);
    FUNC2(ch, go);

    FUNC0(FUNC4("cs4281chan_setblocksize: blksz %d Setting %d\n", blocksize, ch->blksz));

    return ch->blksz;
}