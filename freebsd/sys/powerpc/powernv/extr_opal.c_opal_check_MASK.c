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
typedef  int /*<<< orphan*/  val ;
typedef  int uint64_t ;
typedef  int phandle_t ;
typedef  int cell_t ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int PSL_DR ; 
 int PSL_EE ; 
 int PSL_IR ; 
 int PSL_SE ; 
 int FUNC3 () ; 
 int opal_data ; 
 int opal_entrypoint ; 
 int opal_initialized ; 
 int opal_msr ; 

int
FUNC4(void)
{
	phandle_t opal;
	cell_t val[2];

	if (opal_initialized)
		return (0);

	opal = FUNC0("/ibm,opal");
	if (opal == -1)
		return (ENOENT);

	if (!FUNC2(opal, "opal-base-address") ||
	    !FUNC2(opal, "opal-entry-address"))
		return (ENOENT);
	
	FUNC1(opal, "opal-base-address", val, sizeof(val));
	opal_data = ((uint64_t)val[0] << 32) | val[1];
	FUNC1(opal, "opal-entry-address", val, sizeof(val));
	opal_entrypoint = ((uint64_t)val[0] << 32) | val[1];

	opal_msr = FUNC3() & ~(PSL_EE | PSL_IR | PSL_DR | PSL_SE);

	opal_initialized = 1;

	return (0);
}