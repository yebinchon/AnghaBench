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
struct iwi_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct iwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IWI_CSR_IO ; 
 int IWI_IO_RADIO_ENABLED ; 

__attribute__((used)) static int
FUNC1(struct iwi_softc *sc)
{
	return (FUNC0(sc, IWI_CSR_IO) & IWI_IO_RADIO_ENABLED) == 0;
}