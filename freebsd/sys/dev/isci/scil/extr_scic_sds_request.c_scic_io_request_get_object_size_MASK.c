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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

U32 FUNC4(void)
{
   U32 ssp_request_size;
   U32 stp_request_size;
   U32 smp_request_size;

   ssp_request_size = FUNC2();
   stp_request_size = FUNC3();
   smp_request_size = FUNC1();

   return FUNC0(ssp_request_size, FUNC0(stp_request_size, smp_request_size));
}