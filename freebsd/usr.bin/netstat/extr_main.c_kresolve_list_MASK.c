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
struct nlist {scalar_t__ n_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct nlist*) ; 
 int /*<<< orphan*/ * kvmd ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ nlistf ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC4(struct nlist *_nl)
{

	if ((kvmd == NULL) && (FUNC2() != 0))
		return (-1);

	if (_nl[0].n_type != 0)
		return (0);

	if (FUNC1(kvmd, _nl) < 0) {
		if (nlistf)
			FUNC3(1, "%s: kvm_nlist: %s", nlistf,
			    FUNC0(kvmd));
		else
			FUNC3(1, "kvm_nlist: %s", FUNC0(kvmd));
	}

	return (0);
}