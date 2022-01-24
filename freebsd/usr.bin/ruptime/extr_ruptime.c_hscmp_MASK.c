#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  wd_hostname; } ;
struct TYPE_4__ {TYPE_1__ hs_wd; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (void const*) ; 
 int rflg ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const void *a1, const void *a2)
{
	return (rflg *
	    FUNC1(FUNC0(a1)->hs_wd.wd_hostname, FUNC0(a2)->hs_wd.wd_hostname));
}