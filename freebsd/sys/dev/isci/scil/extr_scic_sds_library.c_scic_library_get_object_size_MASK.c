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
typedef  int U8 ;
typedef  int U32 ;
typedef  int /*<<< orphan*/  SCIC_SDS_LIBRARY_T ;

/* Variables and functions */
 int FUNC0 () ; 

U32 FUNC1(
   U8 max_controller_count
)
{
   return   sizeof(SCIC_SDS_LIBRARY_T)
          + FUNC0() * max_controller_count;
}