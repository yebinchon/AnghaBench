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
struct cesa_softc {int dummy; } ;
struct cesa_request {int /*<<< orphan*/  cr_sdesc; int /*<<< orphan*/  cr_tdesc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cesa_softc*,struct cesa_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  requests ; 

__attribute__((used)) static struct cesa_request *
FUNC2(struct cesa_softc *sc)
{
	struct cesa_request *cr;

	FUNC0(sc, cr, requests);
	if (!cr)
		return (NULL);

	FUNC1(&cr->cr_tdesc);
	FUNC1(&cr->cr_sdesc);

	return (cr);
}