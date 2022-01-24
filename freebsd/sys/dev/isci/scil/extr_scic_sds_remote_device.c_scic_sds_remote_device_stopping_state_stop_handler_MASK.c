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
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SCI_STATUS FUNC1(
   SCI_BASE_REMOTE_DEVICE_T *device
)
{
   // All requests should have been terminated, but if there is an
   // attempt to stop a device already in the stopping state, then
   // try again to terminate.
   return FUNC0(
             (SCIC_SDS_REMOTE_DEVICE_T*)device);
}