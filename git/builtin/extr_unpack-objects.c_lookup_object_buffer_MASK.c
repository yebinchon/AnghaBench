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
struct obj_buffer {int dummy; } ;

/* Variables and functions */
 struct obj_buffer* FUNC0 (int /*<<< orphan*/ *,struct object*) ; 
 int /*<<< orphan*/  obj_decorate ; 

__attribute__((used)) static struct obj_buffer *FUNC1(struct object *base)
{
	return FUNC0(&obj_decorate, base);
}