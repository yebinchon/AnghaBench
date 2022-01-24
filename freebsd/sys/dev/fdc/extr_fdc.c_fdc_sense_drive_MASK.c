#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fdc_data {TYPE_1__* fd; } ;
struct TYPE_2__ {int /*<<< orphan*/  fdsu; } ;

/* Variables and functions */
 int /*<<< orphan*/  NE7CMD_SENSED ; 
 scalar_t__ FUNC0 (struct fdc_data*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC1 (struct fdc_data*,char*) ; 

__attribute__((used)) static int
FUNC2(struct fdc_data *fdc, int *st3p)
{
	int st3;

	if (FUNC0(fdc, 2, NE7CMD_SENSED, fdc->fd->fdsu, 1, &st3))
		return (FUNC1(fdc, "Sense Drive Status failed\n"));
	if (st3p)
		*st3p = st3;
	return (0);
}