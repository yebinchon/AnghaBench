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
struct pvscsi_softc {int /*<<< orphan*/  free_list; int /*<<< orphan*/  lock; } ;
struct pvscsi_hcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 struct pvscsi_hcb* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct pvscsi_hcb *
FUNC3(struct pvscsi_softc *sc)
{
	struct pvscsi_hcb *hcb;

	FUNC2(&sc->lock, MA_OWNED);

	hcb = FUNC0(&sc->free_list);
	if (hcb) {
		FUNC1(&sc->free_list, links);
	}

	return (hcb);
}