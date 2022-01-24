#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct object_id {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_4__ {int /*<<< orphan*/  plugged; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,struct object_id*,int,size_t,int,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__ state ; 

int FUNC2(struct object_id *oid,
		       int fd, size_t size, enum object_type type,
		       const char *path, unsigned flags)
{
	int status = FUNC0(&state, oid, fd, size, type,
				     path, flags);
	if (!state.plugged)
		FUNC1(&state);
	return status;
}