#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  module_t ;
struct TYPE_2__ {int nsess; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
#define  MOD_LOAD 131 
#define  MOD_QUIESCE 130 
#define  MOD_SHUTDOWN 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* isc ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int
FUNC5(module_t mod, int what, void *arg)
{
     int error = 0;

     FUNC0(8);

     switch(what) {
     case MOD_LOAD:
	  error = FUNC1();
	  break;

     case MOD_QUIESCE:
	  if(isc->nsess) {
	       FUNC4("iscsi module busy(nsess=%d), cannot unload", isc->nsess);
	       FUNC3(LOG_ERR, "iscsi module busy, cannot unload");
	  }
	  return isc->nsess;

     case MOD_SHUTDOWN:
	  break;

     case MOD_UNLOAD:
	  FUNC2();
	  break;

     default:
	  break;
     }
     return (error);
}