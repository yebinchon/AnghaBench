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
struct vmbus_softc {int /*<<< orphan*/  vmbus_xc; } ;
struct vmbus_message {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct vmbus_message const*,int) ; 

void
FUNC1(struct vmbus_softc *sc, const struct vmbus_message *msg)
{

	FUNC0(sc->vmbus_xc, msg, sizeof(*msg));
}