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
struct twe_softc {int dummy; } ;
struct twe_request {int tr_flags; int /*<<< orphan*/  (* tr_complete ) (struct twe_request*) ;} ;

/* Variables and functions */
 int TWE_CMD_SLEEPER ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct twe_request*) ; 
 struct twe_request* FUNC3 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct twe_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct twe_request*) ; 

__attribute__((used)) static void
FUNC6(struct twe_softc *sc) 
{
    struct twe_request	*tr;
    
    FUNC1(5);

    /*
     * Pull commands off the completed list, dispatch them appropriately
     */
    while ((tr = FUNC3(sc)) != NULL) {
	/* unmap the command's data buffer */
	FUNC4(tr);

	/* dispatch to suit command originator */
	if (tr->tr_complete != NULL) {		/* completion callback */
	    FUNC0(2, "call completion handler %p", tr->tr_complete);
	    tr->tr_complete(tr);

	} else if (tr->tr_flags & TWE_CMD_SLEEPER) {	/* caller is asleep waiting */
	    FUNC0(2, "wake up command owner on %p", tr);
	    FUNC5(tr);

	} else {					/* caller is polling command */
	    FUNC0(2, "command left for owner");
	}
    }   
}