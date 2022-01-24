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
struct snd_clone_entry {int /*<<< orphan*/ * devt; int /*<<< orphan*/  head; } ;
struct snd_clone {int /*<<< orphan*/ * devt; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct snd_clone_entry* FUNC1 (int /*<<< orphan*/ *) ; 
 struct snd_clone_entry* FUNC2 (struct snd_clone_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_clone_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 

void
FUNC5(struct snd_clone *c)
{
	struct snd_clone_entry *ce, *tmp;

	FUNC0(c != NULL, ("NULL snd_clone"));

	ce = FUNC1(&c->head);
	while (ce != NULL) {
		tmp = FUNC2(ce, link);
		if (ce->devt != NULL)
			FUNC3(ce->devt);
		FUNC4(ce, M_DEVBUF);
		ce = tmp;
	}

	FUNC4(c, M_DEVBUF);
}