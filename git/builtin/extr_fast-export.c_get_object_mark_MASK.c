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
struct object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  idnums ; 
 void* FUNC0 (int /*<<< orphan*/ *,struct object*) ; 
 int FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(struct object *object)
{
	void *decoration = FUNC0(&idnums, object);
	if (!decoration)
		return 0;
	return FUNC1(decoration);
}