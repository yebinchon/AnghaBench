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
struct tws_softc {int dummy; } ;
struct tws_request {int /*<<< orphan*/  timeout; struct tws_softc* sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tws_softc*,struct tws_request*) ; 

void
FUNC2(struct tws_request *req)
{
    struct tws_softc *sc = req->sc;

    FUNC0(&req->timeout);
    FUNC1(sc, req);
}