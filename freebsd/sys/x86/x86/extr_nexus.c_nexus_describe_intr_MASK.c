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
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,void*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct resource*) ; 

__attribute__((used)) static int
FUNC2(device_t dev, device_t child, struct resource *irq,
    void *cookie, const char *descr)
{

	return (FUNC0(FUNC1(irq), cookie, descr));
}