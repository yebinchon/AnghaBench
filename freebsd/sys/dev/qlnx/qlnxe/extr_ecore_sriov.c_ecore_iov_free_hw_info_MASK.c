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
struct ecore_dev {int /*<<< orphan*/  p_iov_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSAL_NULL ; 

void FUNC1(struct ecore_dev *p_dev)
{
	FUNC0(p_dev, p_dev->p_iov_info);
	p_dev->p_iov_info = OSAL_NULL;
}