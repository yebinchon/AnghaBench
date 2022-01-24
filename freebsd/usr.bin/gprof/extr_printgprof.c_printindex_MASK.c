#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ ncall; scalar_t__ time; int index; char* name; int cycleno; scalar_t__ printflag; } ;
typedef  TYPE_1__ nltype ;

/* Variables and functions */
 int BUFSIZ ; 
 scalar_t__ FUNC0 (int,int) ; 
 TYPE_1__* cyclenl ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 int /*<<< orphan*/  namecmp ; 
 int ncycle ; 
 TYPE_1__* nl ; 
 int nname ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 scalar_t__ zflag ; 

void
FUNC6(void)
{
    nltype		**namesortnlp;
    register nltype	*nlp;
    int			idx, nnames, todo, i, j;
    char		peterbuffer[ BUFSIZ ];

	/*
	 *	Now, sort regular function name alphabetically
	 *	to create an index.
	 */
    namesortnlp = (nltype **) FUNC0( nname + ncycle , sizeof(nltype *) );
    if ( namesortnlp == (nltype **) 0 )
	FUNC1( 1 , "ran out of memory for sorting");
    for ( idx = 0 , nnames = 0 ; idx < nname ; idx++ ) {
	if ( zflag == 0 && nl[idx].ncall == 0 && nl[idx].time == 0 )
		continue;
	namesortnlp[nnames++] = &nl[idx];
    }
    FUNC4( namesortnlp , nnames , sizeof(nltype *) , namecmp );
    for ( idx = 1 , todo = nnames ; idx <= ncycle ; idx++ ) {
	namesortnlp[todo++] = &cyclenl[idx];
    }
    FUNC3( "\f\nIndex by function name\n\n" );
    idx = ( todo + 2 ) / 3;
    for ( i = 0; i < idx ; i++ ) {
	for ( j = i; j < todo ; j += idx ) {
	    nlp = namesortnlp[ j ];
	    if ( nlp -> printflag ) {
		FUNC5( peterbuffer , "[%d]" , nlp -> index );
	    } else {
		FUNC5( peterbuffer , "(%d)" , nlp -> index );
	    }
	    if ( j < nnames ) {
		FUNC3( "%6.6s %-19.19s" , peterbuffer , nlp -> name );
	    } else {
		FUNC3( "%6.6s " , peterbuffer );
		FUNC5( peterbuffer , "<cycle %d>" , nlp -> cycleno );
		FUNC3( "%-19.19s" , peterbuffer );
	    }
	}
	FUNC3( "\n" );
    }
    FUNC2( namesortnlp );
}