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
struct thread {int dummy; } ;
struct cdev {TYPE_1__* si_drv2; } ;
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ isc_session_t ;

/* Variables and functions */
 int ISC_FFPHASE ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct cdev*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ max_sessions ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC6(struct cdev *dev, int flag, int otyp, struct thread *td)
{
     isc_session_t	*sp;

     FUNC1(8);

     FUNC0(3, "session=%d flag=%x", FUNC2(dev), flag);

     if(FUNC2(dev) == max_sessions) {
	  return 0;
     }
     sp = dev->si_drv2;
     if(sp != NULL) {
	  FUNC4(3, "sp->flags=%x", sp->flags );
	  /*
	   | if still in full phase, this probably means
	   | that something went really bad.
	   | it could be a result from 'shutdown', in which case
	   | we will ignore it (so buffers can be flushed).
	   | the problem is that there is no way of differentiating
	   | between a shutdown procedure and 'iscontrol' dying.
	   */
	  if(sp->flags & ISC_FFPHASE)
	       // delay in case this is a shutdown.
	       FUNC5(sp, PRIBIO, "isc-cls", 60*hz);
	  FUNC3(sp);
     }
     FUNC0(2, "done");
     return 0;
}