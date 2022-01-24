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
struct TYPE_4__ {int ncall; int time; int childtime; } ;
typedef  TYPE_1__ nltype ;

/* Variables and functions */
 int actime ; 
 int hz ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int totime ; 
 scalar_t__ zflag ; 

void
FUNC2(register nltype *np)
{

    if ( zflag == 0 && np -> ncall == 0 && np -> time == 0 &&
	 np -> childtime == 0 ) {
	return;
    }
    actime += np -> time;
    if (hz >= 10000)
	FUNC0( "%5.1f %10.3f %8.3f" ,
	    100 * np -> time / totime , actime / hz , np -> time / hz );
    else
	FUNC0( "%5.1f %10.2f %8.2f" ,
	    100 * np -> time / totime , actime / hz , np -> time / hz );
    if ( np -> ncall != 0 ) {
	if (hz >= 10000000)
	    FUNC0( " %8ld %8.0f %8.0f  " , np -> ncall ,
		1e9 * np -> time / hz / np -> ncall ,
		1e9 * ( np -> time + np -> childtime ) / hz / np -> ncall );
	else if (hz >= 10000)
	    FUNC0( " %8ld %8.0f %8.0f  " , np -> ncall ,
		1e6 * np -> time / hz / np -> ncall ,
		1e6 * ( np -> time + np -> childtime ) / hz / np -> ncall );
	else
	    FUNC0( " %8ld %8.2f %8.2f  " , np -> ncall ,
		1000 * np -> time / hz / np -> ncall ,
		1000 * ( np -> time + np -> childtime ) / hz / np -> ncall );
    } else if ( np -> time != 0 || np -> childtime != 0 ) {
	FUNC0( " %8ld %7.2f%% %8.8s  " , np -> ncall ,
	    100 * np -> time / ( np -> time + np -> childtime ) , "" );
    } else {
	FUNC0( " %8.8s %8.8s %8.8s  " , "" , "" , "" );
    }
    FUNC1( np );
    FUNC0( "\n" );
}