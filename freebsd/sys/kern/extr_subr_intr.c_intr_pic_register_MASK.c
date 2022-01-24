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
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_PIC ; 
 int /*<<< orphan*/  FUNC0 (char*,struct intr_pic*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,intptr_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct intr_pic* FUNC2 (int /*<<< orphan*/ *,intptr_t,int /*<<< orphan*/ ) ; 

struct intr_pic *
FUNC3(device_t dev, intptr_t xref)
{
	struct intr_pic *pic;

	if (dev == NULL)
		return (NULL);
	pic = FUNC2(dev, xref, FLAG_PIC);
	if (pic == NULL)
		return (NULL);

	FUNC0("PIC %p registered for %s <dev %p, xref %x>\n", pic,
	    FUNC1(dev), dev, xref);
	return (pic);
}