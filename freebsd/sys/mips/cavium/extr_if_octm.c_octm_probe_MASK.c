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
typedef  int /*<<< orphan*/  device_t ;
typedef  int cvmx_mgmt_port_result_t ;

/* Variables and functions */
#define  CVMX_MGMT_PORT_INIT_ERROR 131 
#define  CVMX_MGMT_PORT_INVALID_PARAM 130 
#define  CVMX_MGMT_PORT_NO_MEMORY 129 
#define  CVMX_MGMT_PORT_SUCCESS 128 
 int EIO ; 
 int ENOBUFS ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	cvmx_mgmt_port_result_t result;

	result = FUNC0(FUNC1(dev));
	switch (result) {
	case CVMX_MGMT_PORT_SUCCESS:
		break;
	case CVMX_MGMT_PORT_NO_MEMORY:
		return (ENOBUFS);
	case CVMX_MGMT_PORT_INVALID_PARAM:
		return (ENXIO);
	case CVMX_MGMT_PORT_INIT_ERROR:
		return (EIO);
	}

	FUNC2(dev, "Cavium Octeon Management Ethernet");

	return (0);
}