#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_3__ {scalar_t__ a_text; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * textspace ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 TYPE_1__ xbuf ; 

__attribute__((used)) static void
FUNC6(FILE *nfile)
{

    textspace = (u_char *) FUNC4( xbuf.a_text );
    if ( textspace == NULL ) {
	FUNC5("no room for %u bytes of text space: can't do -c" ,
		  xbuf.a_text );
	return;
    }
    (void) FUNC3( nfile , FUNC0( xbuf ) , 0 );
    if ( FUNC1( textspace , 1 , xbuf.a_text , nfile ) != xbuf.a_text ) {
	FUNC5("couldn't read text space: can't do -c");
	FUNC2( textspace );
	textspace = 0;
	return;
    }
}