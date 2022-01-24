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
struct ucycom_softc {int dummy; } ;
struct ucom_softc {struct ucycom_softc* sc_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCYCOM_DEFAULT_CFG ; 
 int /*<<< orphan*/  UCYCOM_DEFAULT_RATE ; 
 int /*<<< orphan*/  FUNC0 (struct ucycom_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct ucom_softc *ucom)
{
	struct ucycom_softc *sc = ucom->sc_parent;

	/* set default configuration */
	FUNC0(sc, UCYCOM_DEFAULT_RATE, UCYCOM_DEFAULT_CFG);
}