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
struct mmc_softc {int dummy; } ;
struct mmc_request {int /*<<< orphan*/  flags; scalar_t__ done_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_softc*) ; 
 int /*<<< orphan*/  MMC_REQ_DONE ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_request*) ; 

__attribute__((used)) static void
FUNC3(struct mmc_request *req)
{
	struct mmc_softc *sc;

	sc = (struct mmc_softc *)req->done_data;
	FUNC0(sc);
	req->flags |= MMC_REQ_DONE;
	FUNC1(sc);
	FUNC2(req);
}