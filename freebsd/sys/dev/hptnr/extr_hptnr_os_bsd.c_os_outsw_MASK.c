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
typedef  scalar_t__ HPT_UPTR ;
typedef  int /*<<< orphan*/  HPT_U32 ;
typedef  int /*<<< orphan*/  HPT_U16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,void*,int /*<<< orphan*/ ) ; 

void FUNC1(void *port, HPT_U16 *buffer, HPT_U32 count)
{ FUNC0((unsigned)(HPT_UPTR)port, (void *)buffer, count); }