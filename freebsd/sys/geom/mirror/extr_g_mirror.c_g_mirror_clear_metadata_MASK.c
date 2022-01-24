#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct g_mirror_disk {TYPE_1__* d_softc; } ;
struct TYPE_2__ {scalar_t__ sc_type; int /*<<< orphan*/  sc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ G_MIRROR_TYPE_AUTOMATIC ; 
 int /*<<< orphan*/  SX_LOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct g_mirror_disk*) ; 
 int FUNC2 (struct g_mirror_disk*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct g_mirror_disk *disk)
{
	int error;

	FUNC3();
	FUNC4(&disk->d_softc->sc_lock, SX_LOCKED);

	if (disk->d_softc->sc_type != G_MIRROR_TYPE_AUTOMATIC)
		return (0);
	error = FUNC2(disk, NULL);
	if (error == 0) {
		FUNC0(2, "Metadata on %s cleared.",
		    FUNC1(disk));
	} else {
		FUNC0(0,
		    "Cannot clear metadata on disk %s (error=%d).",
		    FUNC1(disk), error);
	}
	return (error);
}