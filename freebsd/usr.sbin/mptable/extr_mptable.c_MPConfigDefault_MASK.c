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

/* Variables and functions */
 int napic ; 
 int nbus ; 
 int ncpu ; 
 int nintr ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1( int featureByte )
{
    FUNC0( "  MP default config type: %d\n\n", featureByte );
    switch ( featureByte ) {
    case 1:
	FUNC0( "   bus: ISA, APIC: 82489DX\n" );
	break;
    case 2:
	FUNC0( "   bus: EISA, APIC: 82489DX\n" );
	break;
    case 3:
	FUNC0( "   bus: EISA, APIC: 82489DX\n" );
	break;
    case 4:
	FUNC0( "   bus: MCA, APIC: 82489DX\n" );
	break;
    case 5:
	FUNC0( "   bus: ISA+PCI, APIC: Integrated\n" );
	break;
    case 6:
	FUNC0( "   bus: EISA+PCI, APIC: Integrated\n" );
	break;
    case 7:
	FUNC0( "   bus: MCA+PCI, APIC: Integrated\n" );
	break;
    default:
	FUNC0( "   future type\n" );
	break;
    }

    switch ( featureByte ) {
    case 1:
    case 2:
    case 3:
    case 4:
	nbus = 1;
	break;
    case 5:
    case 6:
    case 7:
	nbus = 2;
	break;
    default:
	FUNC0( "   future type\n" );
	break;
    }

    ncpu = 2;
    napic = 1;
    nintr = 16;
}