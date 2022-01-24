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
struct SCIC_SDS_REQUEST {int dummy; } ;
struct SCIC_SDS_REMOTE_DEVICE {int dummy; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCIC_SDS_PORT_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SCI_STATUS FUNC1(
   SCIC_SDS_PORT_T               *port,
   struct SCIC_SDS_REMOTE_DEVICE *device,
   struct SCIC_SDS_REQUEST       *io_request
)
{
   SCIC_SDS_PORT_T *this_port = (SCIC_SDS_PORT_T *)port;

   FUNC0(this_port);

   return SCI_SUCCESS;
}