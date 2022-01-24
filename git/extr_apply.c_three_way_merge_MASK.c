#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct object_id {int dummy; } ;
struct image {int /*<<< orphan*/  len; scalar_t__ buf; } ;
struct apply_state {TYPE_1__* repo; } ;
struct TYPE_10__ {scalar_t__ ptr; } ;
typedef  TYPE_2__ mmfile_t ;
struct TYPE_11__ {int /*<<< orphan*/  size; scalar_t__ ptr; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_3__ mmbuffer_t ;
struct TYPE_9__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct image*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (TYPE_3__*,char*,TYPE_2__*,char*,TYPE_2__*,char*,TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct object_id const*) ; 

__attribute__((used)) static int FUNC4(struct apply_state *state,
			   struct image *image,
			   char *path,
			   const struct object_id *base,
			   const struct object_id *ours,
			   const struct object_id *theirs)
{
	mmfile_t base_file, our_file, their_file;
	mmbuffer_t result = { NULL };
	int status;

	FUNC3(&base_file, base);
	FUNC3(&our_file, ours);
	FUNC3(&their_file, theirs);
	status = FUNC2(&result, path,
			  &base_file, "base",
			  &our_file, "ours",
			  &their_file, "theirs",
			  state->repo->index,
			  NULL);
	FUNC1(base_file.ptr);
	FUNC1(our_file.ptr);
	FUNC1(their_file.ptr);
	if (status < 0 || !result.ptr) {
		FUNC1(result.ptr);
		return -1;
	}
	FUNC0(image);
	image->buf = result.ptr;
	image->len = result.size;

	return status;
}