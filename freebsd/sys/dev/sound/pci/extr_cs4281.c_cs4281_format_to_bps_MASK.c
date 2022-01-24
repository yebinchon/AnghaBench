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
typedef  int u_int32_t ;

/* Variables and functions */
 int AFMT_8BIT ; 
 int FUNC0 (int) ; 

__attribute__((used)) static inline u_int32_t
FUNC1(u_int32_t format)
{
    return ((AFMT_8BIT & format) ? 1 : 2) *
	((FUNC0(format) > 1) ? 2 : 1);
}