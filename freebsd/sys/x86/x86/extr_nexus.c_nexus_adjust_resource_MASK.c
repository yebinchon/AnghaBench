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
struct rman {int dummy; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 struct rman* FUNC0 (int) ; 
 int FUNC1 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*,struct rman*) ; 

__attribute__((used)) static int
FUNC3(device_t bus, device_t child, int type,
    struct resource *r, rman_res_t start, rman_res_t end)
{
	struct rman *rm;

	rm = FUNC0(type);
	if (rm == NULL)
		return (ENXIO);
	if (!FUNC2(r, rm))
		return (EINVAL);
	return (FUNC1(r, start, end));
}