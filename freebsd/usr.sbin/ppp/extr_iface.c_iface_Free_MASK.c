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
struct iface {struct iface* addr; struct iface* descr; struct iface* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iface*) ; 

void
FUNC1(struct iface *iface)
{
    FUNC0(iface->name);
    FUNC0(iface->descr);
    FUNC0(iface->addr);
    FUNC0(iface);
}