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
struct name {int n_type; int /*<<< orphan*/  n_name; struct name* n_flink; } ;
struct header {int /*<<< orphan*/ * h_bcc; int /*<<< orphan*/ * h_cc; int /*<<< orphan*/ * h_to; } ;

/* Variables and functions */
 int GBCC ; 
 int GCC ; 
 int GDEL ; 
 int GMASK ; 
 int GTO ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct header *hp, struct name *tolist)
{
	struct name *np;

	hp->h_to = NULL;
	hp->h_cc = NULL;
	hp->h_bcc = NULL;
	for (np = tolist; np != NULL; np = np->n_flink) {
		/* Don't copy deleted addresses to the header */
		if (np->n_type & GDEL)
			continue;
		if ((np->n_type & GMASK) == GTO)
			hp->h_to =
			    FUNC0(hp->h_to, FUNC1(np->n_name, np->n_type));
		else if ((np->n_type & GMASK) == GCC)
			hp->h_cc =
			    FUNC0(hp->h_cc, FUNC1(np->n_name, np->n_type));
		else if ((np->n_type & GMASK) == GBCC)
			hp->h_bcc =
			    FUNC0(hp->h_bcc, FUNC1(np->n_name, np->n_type));
	}
}