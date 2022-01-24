#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct update_callback_data {int flags; int /*<<< orphan*/  add_errors; } ;
struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_options {int dummy; } ;
struct diff_filepair {int /*<<< orphan*/  status; TYPE_1__* one; } ;
struct TYPE_2__ {char* path; } ;

/* Variables and functions */
 int ADD_CACHE_IGNORE_ERRORS ; 
 int ADD_CACHE_IGNORE_REMOVAL ; 
 int ADD_CACHE_PRETEND ; 
 int ADD_CACHE_VERBOSE ; 
#define  DIFF_STATUS_DELETED 130 
#define  DIFF_STATUS_MODIFIED 129 
#define  DIFF_STATUS_TYPE_CHANGED 128 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct diff_filepair*,struct update_callback_data*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  the_index ; 

__attribute__((used)) static void FUNC6(struct diff_queue_struct *q,
			    struct diff_options *opt, void *cbdata)
{
	int i;
	struct update_callback_data *data = cbdata;

	for (i = 0; i < q->nr; i++) {
		struct diff_filepair *p = q->queue[i];
		const char *path = p->one->path;
		switch (FUNC3(p, data)) {
		default:
			FUNC2(FUNC0("unexpected diff status %c"), p->status);
		case DIFF_STATUS_MODIFIED:
		case DIFF_STATUS_TYPE_CHANGED:
			if (FUNC1(&the_index, path,	data->flags)) {
				if (!(data->flags & ADD_CACHE_IGNORE_ERRORS))
					FUNC2(FUNC0("updating files failed"));
				data->add_errors++;
			}
			break;
		case DIFF_STATUS_DELETED:
			if (data->flags & ADD_CACHE_IGNORE_REMOVAL)
				break;
			if (!(data->flags & ADD_CACHE_PRETEND))
				FUNC5(&the_index, path);
			if (data->flags & (ADD_CACHE_PRETEND|ADD_CACHE_VERBOSE))
				FUNC4(FUNC0("remove '%s'\n"), path);
			break;
		}
	}
}