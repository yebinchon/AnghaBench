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
struct vtblk_softc {int /*<<< orphan*/  vtblk_req_ready; } ;
struct vtblk_request {int dummy; } ;

/* Variables and functions */
 struct vtblk_request* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct vtblk_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vbr_link ; 

__attribute__((used)) static struct vtblk_request *
FUNC2(struct vtblk_softc *sc)
{
	struct vtblk_request *req;

	req = FUNC0(&sc->vtblk_req_ready);
	if (req != NULL)
		FUNC1(&sc->vtblk_req_ready, req, vbr_link);

	return (req);
}