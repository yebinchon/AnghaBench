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
typedef  int U32 ;
typedef  int /*<<< orphan*/  SCIC_SDS_PORT_T ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUSPEND ; 
 int /*<<< orphan*/  control ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
void FUNC3(
   SCIC_SDS_PORT_T *this_port
)
{
   U32 pts_control_value;

   pts_control_value = FUNC1(this_port, control);

   pts_control_value |= FUNC0(ENABLE) | FUNC0(SUSPEND);

   FUNC2(this_port, control, pts_control_value);
}