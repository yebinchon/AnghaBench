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
struct eventhandler_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eventhandler_list*) ; 
 struct eventhandler_list* FUNC1 (char const*) ; 
 int /*<<< orphan*/  eventhandler_lists_initted ; 
 int /*<<< orphan*/  eventhandler_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct eventhandler_list *
FUNC4(const char *name)
{
    struct eventhandler_list	*list;

    if (!eventhandler_lists_initted)
	return(NULL);
    
    /* scan looking for the requested list */
    FUNC2(&eventhandler_mutex);
    list = FUNC1(name);
    if (list != NULL)
	FUNC0(list);
    FUNC3(&eventhandler_mutex);
    
    return(list);
}