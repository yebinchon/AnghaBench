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
struct cache_transform_response {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_cache_transform_request ; 
 int /*<<< orphan*/  FUNC2 (struct cache_transform_response*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(
	struct cache_transform_response *transform_response)
{

	FUNC0(init_cache_transform_request);
	FUNC2(transform_response, 0, sizeof(struct cache_transform_response));
	FUNC1(init_cache_transform_request);
}