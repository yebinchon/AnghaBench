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
struct vt_device {int dummy; } ;

/* Variables and functions */
 int CN_DEAD ; 
 int CN_INTERNAL ; 
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static int
FUNC1(struct vt_device *vd)
{

	return (FUNC0() ? CN_DEAD : CN_INTERNAL);
}