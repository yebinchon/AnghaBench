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
struct iic_dp_aux_data {int /*<<< orphan*/ * port; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct iic_dp_aux_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(device_t idev)
{
	struct iic_dp_aux_data *aux_data;

	aux_data = FUNC2(idev);
	aux_data->port = FUNC1(idev, "iicbus", -1);
	if (aux_data->port == NULL)
		return (ENXIO);
	FUNC3(aux_data->port);
	FUNC0(idev);
	return (0);
}