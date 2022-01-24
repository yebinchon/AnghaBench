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
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCIC_SDS_PORT_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_FAILURE_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

SCI_STATUS FUNC4(
   SCIC_SDS_PORT_T * port,
   U32               event_code
)
{
   FUNC0((
      FUNC1((SCIC_SDS_PORT_T *)port),
      SCIC_LOG_OBJECT_PORT,
      "SCIC Port 0x%08x requested to process event 0x%08x while in invalid state %d\n",
      port, event_code,
      FUNC2(
         FUNC3((SCIC_SDS_PORT_T *)port))
   ));

   return SCI_FAILURE_INVALID_STATE;
}