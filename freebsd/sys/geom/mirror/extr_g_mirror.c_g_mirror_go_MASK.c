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
struct g_mirror_softc {int /*<<< orphan*/  sc_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int G_MIRROR_EVENT_DEVICE ; 
 int G_MIRROR_EVENT_DONTWAIT ; 
 int /*<<< orphan*/  FUNC1 (struct g_mirror_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct g_mirror_softc *sc;

	sc = arg;
	FUNC0(0, "Force device %s start due to timeout.", sc->sc_name);
	FUNC1(sc, 0,
	    G_MIRROR_EVENT_DONTWAIT | G_MIRROR_EVENT_DEVICE);
}