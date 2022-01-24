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
typedef  int uint32_t ;
struct ntb_softc {scalar_t__ type; } ;

/* Variables and functions */
 int ATOM_IBIST_ERR_OFLOW ; 
 int /*<<< orphan*/  ATOM_IBSTERRRCRVSTS0_OFFSET ; 
 int ATOM_LTSSMSTATEJMP_FORCEDETECT ; 
 int /*<<< orphan*/  ATOM_LTSSMSTATEJMP_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ NTB_ATOM ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC2(struct ntb_softc *ntb)
{
	uint32_t status;

	FUNC0(ntb->type == NTB_ATOM, ("ntb type"));

	status = FUNC1(4, ATOM_LTSSMSTATEJMP_OFFSET);
	if ((status & ATOM_LTSSMSTATEJMP_FORCEDETECT) != 0)
		return (true);

	status = FUNC1(4, ATOM_IBSTERRRCRVSTS0_OFFSET);
	return ((status & ATOM_IBIST_ERR_OFLOW) != 0);
}