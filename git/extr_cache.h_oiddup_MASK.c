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
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct object_id*,struct object_id const*) ; 
 struct object_id* FUNC1 (int) ; 

__attribute__((used)) static inline struct object_id *FUNC2(const struct object_id *src)
{
	struct object_id *dst = FUNC1(sizeof(struct object_id));
	FUNC0(dst, src);
	return dst;
}