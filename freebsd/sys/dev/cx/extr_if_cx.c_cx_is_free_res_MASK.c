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
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct resource* FUNC0 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,struct resource*) ; 

__attribute__((used)) static int FUNC2 (device_t dev, int rid, int type, rman_res_t start,
	rman_res_t end, rman_res_t count)
{
	struct resource *res;
	
	if (!(res = FUNC0 (dev, type, &rid, start, end, count, 0)))
		return 0;
		
	FUNC1 (dev, type, rid, res);
	
	return 1;
}