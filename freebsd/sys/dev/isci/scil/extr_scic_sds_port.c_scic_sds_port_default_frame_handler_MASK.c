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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

SCI_STATUS FUNC6(
   SCIC_SDS_PORT_T * port,
   U32               frame_index
)
{
   SCIC_SDS_PORT_T *this_port = (SCIC_SDS_PORT_T *)port;

   FUNC0((
      FUNC1(this_port),
      SCIC_LOG_OBJECT_PORT,
      "SCIC Port 0x%08x requested to process frame %d while in invalid state %d\n",
      port, frame_index,
      FUNC2(
         FUNC4(this_port))
   ));

   FUNC3(
      FUNC5(this_port), frame_index
   );

   return SCI_FAILURE_INVALID_STATE;
}