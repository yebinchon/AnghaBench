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
struct iscsi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_softc*) ; 
 int /*<<< orphan*/ * panicstr ; 

__attribute__((used)) static void
FUNC2(struct iscsi_softc *sc)
{

	if (panicstr == NULL) {
		FUNC0("removing all sessions due to shutdown");
		FUNC1(sc);
	}
}