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
struct cache_read_response {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct cache_read_response*)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct cache_read_response*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct cache_read_response *read_response)
{

	FUNC0(finalize_cache_read_response);
	FUNC2(read_response->data);
	FUNC1(finalize_cache_read_response);
}