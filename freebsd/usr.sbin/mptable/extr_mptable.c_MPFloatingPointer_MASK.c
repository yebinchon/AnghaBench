#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  TYPE_1__* mpfps_t ;
struct TYPE_4__ {int length; int spec_rev; int checksum; int mpfb2; scalar_t__ mpfb5; scalar_t__ mpfb4; scalar_t__ mpfb3; int /*<<< orphan*/  signature; } ;

/* Variables and functions */
 int MPFB2_IMCR_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4( u_int32_t paddr, int where, mpfps_t* mpfpsp )
{
    mpfps_t mpfps;
	
    /* map in mpfps structure*/
    *mpfpsp = mpfps = FUNC1( paddr, sizeof( *mpfps ) );

    /* show its contents */
    FUNC3( "MP Floating Pointer Structure:\n\n" );

    FUNC3( "  location:\t\t\t" );
    switch ( where )
    {
    case 1:
	FUNC3( "EBDA\n" );
	break;
    case 2:
	FUNC3( "BIOS base memory\n" );
	break;
    case 3:
	FUNC3( "DEFAULT base memory (639K)\n" );
	break;
    case 4:
	FUNC3( "BIOS\n" );
	break;
    case 5:
	FUNC3( "Extended BIOS\n" );
	break;

    case 0:
	FUNC3( "NOT found!\n" );
	FUNC0( 1 );
    default:
	FUNC3( "BOGUS!\n" );
	FUNC0( 1 );
    }
    FUNC3( "  physical address:\t\t0x%08x\n", paddr );

    FUNC3( "  signature:\t\t\t'" );
    FUNC2( mpfps->signature, 4 );
    FUNC3( "'\n" );

    FUNC3( "  length:\t\t\t%d bytes\n", mpfps->length * 16 );
    FUNC3( "  version:\t\t\t1.%1d\n", mpfps->spec_rev );
    FUNC3( "  checksum:\t\t\t0x%02x\n", mpfps->checksum );

    /* bits 0:6 are RESERVED */
    if ( mpfps->mpfb2 & 0x7f ) {
        FUNC3( " warning, MP feature byte 2: 0x%02x\n", mpfps->mpfb2 );
    }

    /* bit 7 is IMCRP */
    FUNC3( "  mode:\t\t\t\t%s\n", (mpfps->mpfb2 & MPFB2_IMCR_PRESENT) ?
            "PIC" : "Virtual Wire" );

    /* MP feature bytes 3-5 are expected to be ZERO */
    if ( mpfps->mpfb3 )
        FUNC3( " warning, MP feature byte 3 NONZERO!\n" );
    if ( mpfps->mpfb4 )
        FUNC3( " warning, MP feature byte 4 NONZERO!\n" );
    if ( mpfps->mpfb5 )
        FUNC3( " warning, MP feature byte 5 NONZERO!\n" );
}