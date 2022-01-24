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
struct glxsb_softc {int dummy; } ;
struct glxsb_session {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  crypto_session_t ;

/* Variables and functions */
 struct glxsb_session* FUNC0 (int /*<<< orphan*/ ) ; 
 struct glxsb_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct glxsb_session*) ; 

__attribute__((used)) static void
FUNC3(device_t dev, crypto_session_t cses)
{
	struct glxsb_softc *sc = FUNC1(dev);
	struct glxsb_session *ses;

	if (sc == NULL)
		return;

	ses = FUNC0(cses);
	FUNC2(ses);
}