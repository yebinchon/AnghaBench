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
typedef  int uint32_t ;
struct snd_clone {int typemask; int maxunit; int deadline; int flags; int /*<<< orphan*/  head; int /*<<< orphan*/  tsp; scalar_t__ size; scalar_t__ refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int SND_CLONE_MASK ; 
 int SND_CLONE_MAXUNIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct snd_clone* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct snd_clone *
FUNC4(int typemask, int maxunit, int deadline, uint32_t flags)
{
	struct snd_clone *c;

	FUNC0(!(typemask & ~SND_CLONE_MAXUNIT),
	    ("invalid typemask: 0x%08x", typemask));
	FUNC0(maxunit == -1 ||
	    !(maxunit & ~(~typemask & SND_CLONE_MAXUNIT)),
	    ("maxunit overflow: typemask=0x%08x maxunit=%d",
	    typemask, maxunit));
	FUNC0(!(flags & ~SND_CLONE_MASK),
	    ("invalid clone flags=0x%08x", flags));

	c = FUNC2(sizeof(*c), M_DEVBUF, M_WAITOK | M_ZERO);
	c->refcount = 0;
	c->size = 0;
	c->typemask = typemask;
	c->maxunit = (maxunit == -1) ? (~typemask & SND_CLONE_MAXUNIT) :
	    maxunit;
	c->deadline = deadline;
	c->flags = flags;
	FUNC3(&c->tsp);
	FUNC1(&c->head);

	return (c);
}