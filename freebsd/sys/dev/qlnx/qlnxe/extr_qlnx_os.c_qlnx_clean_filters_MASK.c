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
struct TYPE_6__ {int /*<<< orphan*/  primary_mac; } ;
typedef  TYPE_1__ qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECORE_FILTER_FLUSH ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(qlnx_host_t *ha)
{
        int	rc = 0;

	/* Remove all unicast macs */
	rc = FUNC1(ha);
	if (rc)
		return rc;

	/* Remove all multicast macs */
	rc = FUNC0(ha);
	if (rc)
		return rc;

        rc = FUNC2(ha, ECORE_FILTER_FLUSH, ha->primary_mac);

        return (rc);
}