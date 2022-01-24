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
struct uftdi_param_config {int dummy; } ;
struct ucom_softc {int dummy; } ;
struct termios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct ucom_softc*,struct termios*,struct uftdi_param_config*) ; 

__attribute__((used)) static int
FUNC2(struct ucom_softc *ucom, struct termios *t)
{
	struct uftdi_param_config cfg;

	FUNC0("\n");

	return (FUNC1(ucom, t, &cfg));
}