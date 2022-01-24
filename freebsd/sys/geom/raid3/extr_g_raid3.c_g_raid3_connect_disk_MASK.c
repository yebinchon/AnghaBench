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
struct g_raid3_disk {struct g_consumer* d_consumer; TYPE_1__* d_softc; } ;
struct g_provider {int /*<<< orphan*/  name; } ;
struct g_consumer {scalar_t__ index; struct g_raid3_disk* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc_geom; int /*<<< orphan*/  sc_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct g_consumer*,int,int,int) ; 
 int FUNC3 (struct g_consumer*,struct g_provider*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_consumer*) ; 
 struct g_consumer* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct g_raid3_disk*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int
FUNC11(struct g_raid3_disk *disk, struct g_provider *pp)
{
	struct g_consumer *cp;
	int error;

	FUNC8();
	FUNC1(disk->d_consumer == NULL,
	    ("Disk already connected (device %s).", disk->d_softc->sc_name));

	FUNC9();
	cp = FUNC6(disk->d_softc->sc_geom);
	error = FUNC3(cp, pp);
	if (error != 0) {
		FUNC4(cp);
		FUNC10();
		return (error);
	}
	error = FUNC2(cp, 1, 1, 1);
		FUNC10();
	if (error != 0) {
		FUNC5(cp);
		FUNC4(cp);
		FUNC0(0, "Cannot open consumer %s (error=%d).",
		    pp->name, error);
		return (error);
	}
	disk->d_consumer = cp;
	disk->d_consumer->private = disk;
	disk->d_consumer->index = 0;
	FUNC0(2, "Disk %s connected.", FUNC7(disk));
	return (0);
}