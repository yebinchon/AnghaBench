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
struct TYPE_2__ {int /*<<< orphan*/  gc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,void*) ; 
 TYPE_1__ console ; 

void
FUNC1(int w, int h, void *fbaddr)
{
	console.gc = FUNC0(w, h, fbaddr);
}