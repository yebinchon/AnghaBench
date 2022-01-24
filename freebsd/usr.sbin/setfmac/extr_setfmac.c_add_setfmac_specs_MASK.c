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
struct label_specs {int /*<<< orphan*/  head; } ;
struct label_spec {int nentries; TYPE_1__* entries; } ;
struct TYPE_2__ {char* mactext; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_ALWAYSMATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct label_spec*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  link ; 
 struct label_spec* FUNC3 (int) ; 

void
FUNC4(struct label_specs *specs, char *label)
{
	struct label_spec *spec;

	spec = FUNC3(sizeof(*spec));
	if (spec == NULL)
		FUNC2(1, "malloc");
	spec->nentries = 1;
	spec->entries = FUNC1(spec->nentries, sizeof(*spec->entries));
	if (spec->entries == NULL)
		FUNC2(1, "malloc");
	/* The _only_ thing specified here is the mactext! */
	spec->entries->mactext = label;
	spec->entries->flags |= F_ALWAYSMATCH;
	FUNC0(&specs->head, spec, link);
}