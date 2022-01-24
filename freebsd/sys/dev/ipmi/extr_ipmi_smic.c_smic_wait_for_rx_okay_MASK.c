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

/* Variables and functions */
 int FUNC0 (struct ipmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMIC_FLAGS ; 
 int SMIC_STATUS_RX_RDY ; 

__attribute__((used)) static void
FUNC1(struct ipmi_softc *sc)
{
	int flags;

	do {
		flags = FUNC0(sc, SMIC_FLAGS);
	} while (!(flags & SMIC_STATUS_RX_RDY));
}