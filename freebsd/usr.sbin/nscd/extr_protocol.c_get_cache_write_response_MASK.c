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
struct cache_write_response {int dummy; } ;
struct comm_element {scalar_t__ type; struct cache_write_response c_write_response; } ;

/* Variables and functions */
 scalar_t__ CET_WRITE_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (struct cache_write_response* (*) (struct comm_element*)) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_write_response* (*) (struct comm_element*)) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

struct cache_write_response *
FUNC3(struct comm_element *element)
{

	FUNC0(get_cache_write_response);
	FUNC2(element->type == CET_WRITE_RESPONSE);
	FUNC1(get_cache_write_response);
	return (&element->c_write_response);
}