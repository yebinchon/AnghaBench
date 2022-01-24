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
struct lockf_entry {int /*<<< orphan*/  lf_inedges; } ;
struct lockf_edge {int dummy; } ;

/* Variables and functions */
 struct lockf_edge* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lockf_edge*) ; 

__attribute__((used)) static void
FUNC2(struct lockf_entry *x)
{
	struct lockf_edge *e;

	while ((e = FUNC0(&x->lf_inedges)) != NULL) {
		FUNC1(e);
	}
}