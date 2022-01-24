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
typedef  int int32_t ;
struct TYPE_3__ {int /*<<< orphan*/ * common_service_parameters; } ;
typedef  TYPE_1__ fc_plogi_payload_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 

int32_t
FUNC1(fc_plogi_payload_t *remote_sparms)
{
	return (FUNC0(remote_sparms->common_service_parameters[1]) & (1U << 28)) == 0;
}