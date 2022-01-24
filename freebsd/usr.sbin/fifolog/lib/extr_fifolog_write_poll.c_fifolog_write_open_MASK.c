#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* time_t ;
struct fifolog_writer {unsigned int writerate; unsigned int syncrate; unsigned int compression; scalar_t__ seq; int obufsize; int ibufsize; void* lastwrite; void* lastsync; void* starttime; TYPE_1__* ff; scalar_t__ obuf; int /*<<< orphan*/  flag; scalar_t__ ibufptr; scalar_t__ ibuf; scalar_t__ recno; int /*<<< orphan*/  cnt; } ;
typedef  scalar_t__ off_t ;
struct TYPE_6__ {int avail_out; scalar_t__ next_out; } ;
struct TYPE_5__ {int recsize; TYPE_4__* zs; int /*<<< orphan*/  recbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fifolog_writer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FIFOLOG_FLG_RESTART ; 
 int /*<<< orphan*/  FIFOLOG_FLG_SYNC ; 
 int /*<<< orphan*/  FIFOLOG_WRITER_MAGIC ; 
 unsigned int Z_BEST_COMPRESSION ; 
 int Z_OK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*,int) ; 
 char* FUNC5 (TYPE_1__*,scalar_t__*) ; 
 char* FUNC6 (TYPE_1__**,char const*,int) ; 
 int FUNC7 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct fifolog_writer*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (void**) ; 

const char *
FUNC12(struct fifolog_writer *f, const char *fn,
    unsigned writerate, unsigned syncrate, unsigned compression)
{
	const char *es;
	int i;
	time_t now;
	off_t o;

	FUNC1(f, FIFOLOG_WRITER_MAGIC);

	/* Check for legal compression value */
	if (compression > Z_BEST_COMPRESSION)
		return ("Illegal compression value");

	f->writerate = writerate;
	f->syncrate = syncrate;
	f->compression = compression;

	/* Reset statistics */
	FUNC9(f->cnt, 0, sizeof f->cnt);

	es = FUNC6(&f->ff, fn, 1);
	if (es != NULL)
		return (es);
	es = FUNC5(f->ff, &o);
	if (es != NULL)
		return (es);
	i = FUNC7(f->ff, o);
	if (i)
		return ("Read error, looking for seq");
	f->seq = FUNC3(f->ff->recbuf);
	if (f->seq == 0) {
		/* Empty fifolog */
		f->seq = FUNC10();
	} else {
		f->recno = o + 1;
		f->seq++;
	}

	f->obufsize = f->ff->recsize;
	FUNC0(&f->obuf, f->obufsize);

	f->ibufsize = f->obufsize * 10;
	FUNC0(&f->ibuf, f->ibufsize);
	f->ibufptr = 0;

	i = FUNC4(f->ff->zs, (int)f->compression);
	FUNC2(i == Z_OK);

	f->flag |= FIFOLOG_FLG_RESTART;
	f->flag |= FIFOLOG_FLG_SYNC;
	f->ff->zs->next_out = f->obuf + 9;
	f->ff->zs->avail_out = f->obufsize - 9;

	FUNC11(&now);
	f->starttime = now;
	f->lastsync = now;
	f->lastwrite = now;

	FUNC8(f);
	return (NULL);
}