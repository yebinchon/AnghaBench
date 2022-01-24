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
struct ipmi_softc {int dummy; } ;
struct ipmi_request {int ir_error; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipmi_softc*) ; 
 int FUNC2 (struct ipmi_softc*,struct ipmi_request*) ; 

__attribute__((used)) static int
FUNC3(struct ipmi_softc *sc, struct ipmi_request *req, int timo)
{
	int i, ok;

	ok = 0;
	for (i = 0; i < 3 && !ok; i++) {
		FUNC0(sc);
		ok = FUNC2(sc, req);
		FUNC1(sc);
	}
	if (ok)
		req->ir_error = 0;
	else
		req->ir_error = EIO;
	return (req->ir_error);
}