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
 int RF_ACTIVE ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int FUNC1 (struct resource*) ; 
 int FUNC2 (struct resource*) ; 

__attribute__((used)) static int
FUNC3(device_t dev, device_t child, int type, int rid,
    struct resource *res)
{
	int err;

	if (FUNC1(res) & RF_ACTIVE) {
		err = FUNC0(child, type, rid, res);
		if (err)
			return (err);
	}

	return (FUNC2(res));
}