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
struct snd_dbuf {int dummy; } ;
struct sc_pchinfo {int blksz; int spd; struct snd_dbuf* buffer; void* slave; void* master; int /*<<< orphan*/  fmt; struct pcm_channel* channel; struct sc_info* parent; } ;
struct sc_info {int bufsz; int /*<<< orphan*/  lock; int /*<<< orphan*/  pnum; struct sc_pchinfo* pch; } ;
struct pcm_channel {int dummy; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  AFMT_U8 ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PCMDIR_PLAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct sc_info*) ; 
 scalar_t__ FUNC3 (struct sc_info*,void*,void*,int,struct snd_dbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC6(kobj_t obj, void *devinfo, struct snd_dbuf *b,
    struct pcm_channel *c, int dir)
{
	struct sc_info *sc = devinfo;
	struct sc_pchinfo *ch;
	void *r;

	FUNC0(dir == PCMDIR_PLAY, ("emupchan_init: bad direction"));
	ch = &sc->pch[sc->pnum++];
	ch->buffer = b;
	ch->parent = sc;
	ch->channel = c;
	ch->blksz = sc->bufsz / 2;
	ch->fmt = FUNC1(AFMT_U8, 1, 0);
	ch->spd = 8000;
	FUNC4(sc->lock);
	ch->master = FUNC2(sc);
	ch->slave = FUNC2(sc);
	FUNC5(sc->lock);
	r = (FUNC3(sc, ch->master, ch->slave, sc->bufsz, ch->buffer))
	    ? NULL : ch;

	return r;
}