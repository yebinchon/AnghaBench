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
struct vt_kms_softc {int /*<<< orphan*/  fb_helper; int /*<<< orphan*/  fb_mode_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kdb_active ; 
 int /*<<< orphan*/ * panicstr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static int
FUNC2(void *arg)
{
	struct vt_kms_softc *sc;

	sc = (struct vt_kms_softc *)arg;

	if (!kdb_active && panicstr == NULL)
		FUNC1(taskqueue_thread, &sc->fb_mode_task);
	else
		FUNC0(sc->fb_helper);

	return (0);
}