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
struct cesa_softc {int /*<<< orphan*/  sc_ready_requests; } ;
struct cesa_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cesa_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cesa_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cesa_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cr_stq ; 
 int /*<<< orphan*/  requests ; 

__attribute__((used)) static void
FUNC3(struct cesa_softc *sc, struct cesa_request *cr)
{

	FUNC0(sc, requests);
	FUNC2(&sc->sc_ready_requests, cr, cr_stq);
	FUNC1(sc, requests);
}