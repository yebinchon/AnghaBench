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
typedef  int uint16_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int BXE_FIRST_VF_CID ; 
 int BXE_VF_CIDS ; 
 int ILT_PAGE_CIDS ; 
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int FUNC1 (struct bxe_softc*) ; 

__attribute__((used)) static uint16_t
FUNC2(struct bxe_softc *sc)
{
    if (FUNC0(sc)) {
        return ((BXE_FIRST_VF_CID + BXE_VF_CIDS) / ILT_PAGE_CIDS);
    }
    return (FUNC1(sc));
}