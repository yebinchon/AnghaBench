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
struct snd_dbuf {int dmachan; } ;
struct resource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDBUF_F_DMA ; 
 int FUNC0 (struct resource*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_dbuf*,int /*<<< orphan*/ ,int) ; 

int
FUNC2(struct snd_dbuf *b, struct resource *drq)
{
	/* should do isa_dma_acquire/isa_dma_release here */
	if (drq == NULL) {
		b->dmachan = -1;
	} else {
		FUNC1(b, SNDBUF_F_DMA, 1);
		b->dmachan = FUNC0(drq);
	}
	return 0;
}