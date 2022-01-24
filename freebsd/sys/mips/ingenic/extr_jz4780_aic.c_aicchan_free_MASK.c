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
struct sc_pcminfo {struct aic_softc* sc; } ;
struct sc_chinfo {struct sc_pcminfo* parent; } ;
struct aic_softc {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(kobj_t obj, void *data)
{
	struct sc_chinfo *ch = data;
	struct sc_pcminfo *scp = ch->parent;
	struct aic_softc *sc = scp->sc;

	FUNC0(sc->lock);
	/* TODO: free channel buffer */
	FUNC1(sc->lock);

	return (0);
}