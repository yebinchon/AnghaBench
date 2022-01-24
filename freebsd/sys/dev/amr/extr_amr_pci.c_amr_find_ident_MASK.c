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
struct amr_ident {scalar_t__ vendor; scalar_t__ device; int flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AMR_CFG_SIG ; 
 int AMR_ID_PROBE_SIG ; 
 int AMR_SIGNATURE_1 ; 
 int AMR_SIGNATURE_2 ; 
 struct amr_ident* amr_device_ids ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct amr_ident *
FUNC3(device_t dev)
{
    struct amr_ident *id;
    int sig;

    for (id = amr_device_ids; id->vendor != 0; id++) {
	if ((FUNC1(dev) == id->vendor) &&
	    (FUNC0(dev) == id->device)) {

	    /* do we need to test for a signature? */
	    if (id->flags & AMR_ID_PROBE_SIG) {
		sig = FUNC2(dev, AMR_CFG_SIG, 2);
		if ((sig != AMR_SIGNATURE_1) && (sig != AMR_SIGNATURE_2))
		    continue;
	    }
	    return (id);
	}
    }
    return (NULL);
}