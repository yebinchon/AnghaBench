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
typedef  int /*<<< orphan*/  u_int ;
struct intsrc {int /*<<< orphan*/  is_event; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,char const*) ; 
 struct intsrc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intsrc*) ; 

int
FUNC3(u_int vector, void *ih, const char *descr)
{
	struct intsrc *isrc;
	int error;

	isrc = FUNC1(vector);
	if (isrc == NULL)
		return (EINVAL);
	error = FUNC0(isrc->is_event, ih, descr);
	if (error)
		return (error);
	FUNC2(isrc);
	return (0);
}