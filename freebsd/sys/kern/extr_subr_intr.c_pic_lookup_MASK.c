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
struct intr_pic {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pic_list_lock ; 
 struct intr_pic* FUNC2 (int /*<<< orphan*/ ,intptr_t,int) ; 

__attribute__((used)) static struct intr_pic *
FUNC3(device_t dev, intptr_t xref, int flags)
{
	struct intr_pic *pic;

	FUNC0(&pic_list_lock);
	pic = FUNC2(dev, xref, flags);
	FUNC1(&pic_list_lock);
	return (pic);
}