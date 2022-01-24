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
struct osd {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  OSD_KHELP ; 
 void* FUNC0 (int /*<<< orphan*/ ,struct osd*,int /*<<< orphan*/ ) ; 

void *
FUNC1(struct osd *hosd, int32_t id)
{

	return (FUNC0(OSD_KHELP, hosd, id));
}