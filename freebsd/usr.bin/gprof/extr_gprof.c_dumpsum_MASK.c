#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rawarc {int /*<<< orphan*/  raw_count; int /*<<< orphan*/  raw_selfpc; int /*<<< orphan*/  raw_frompc; } ;
struct TYPE_9__ {TYPE_4__* children; } ;
typedef  TYPE_3__ nltype ;
struct TYPE_10__ {int /*<<< orphan*/  arc_count; TYPE_2__* arc_childp; TYPE_1__* arc_parentp; struct TYPE_10__* arc_childlist; } ;
typedef  TYPE_4__ arctype ;
struct TYPE_8__ {int /*<<< orphan*/  value; } ;
struct TYPE_7__ {int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int SAMPLEDEBUG ; 
 int debug ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int FUNC3 (struct rawarc*,int,int,int /*<<< orphan*/ *) ; 
 struct rawarc gmonhdr ; 
 int histcounter_size ; 
 TYPE_3__* nl ; 
 TYPE_3__* npe ; 
 int nsamples ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rawarc* samples ; 

void
FUNC5(const char *sumfile)
{
    register nltype *nlp;
    register arctype *arcp;
    struct rawarc arc;
    FILE *sfile;

    if ( ( sfile = FUNC2 ( sumfile , "w" ) ) == NULL )
	FUNC0( 1 , "%s" , sumfile );
    /*
     * dump the header; use the last header read in
     */
    if ( FUNC3( &gmonhdr , sizeof gmonhdr , 1 , sfile ) != 1 )
	FUNC0( 1 , "%s" , sumfile );
    /*
     * dump the samples
     */
    if (FUNC3(samples, histcounter_size, nsamples, sfile) != nsamples)
	FUNC0( 1 , "%s" , sumfile );
    /*
     * dump the normalized raw arc information
     */
    for ( nlp = nl ; nlp < npe ; nlp++ ) {
	for ( arcp = nlp -> children ; arcp ; arcp = arcp -> arc_childlist ) {
	    arc.raw_frompc = arcp -> arc_parentp -> value;
	    arc.raw_selfpc = arcp -> arc_childp -> value;
	    arc.raw_count = arcp -> arc_count;
	    if ( FUNC3 ( &arc , sizeof arc , 1 , sfile ) != 1 )
		FUNC0( 1 , "%s" , sumfile );
#	    ifdef DEBUG
		if ( debug & SAMPLEDEBUG ) {
		    printf( "[dumpsum] frompc 0x%lx selfpc 0x%lx count %ld\n" ,
			    arc.raw_frompc , arc.raw_selfpc , arc.raw_count );
		}
#	    endif /* DEBUG */
	}
    }
    FUNC1( sfile );
}