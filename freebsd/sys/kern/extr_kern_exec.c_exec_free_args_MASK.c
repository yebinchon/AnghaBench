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
struct image_args {int /*<<< orphan*/ * fdp; int /*<<< orphan*/ * fname_buf; int /*<<< orphan*/ * buf; int /*<<< orphan*/  bufkva; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(struct image_args *args)
{

	if (args->buf != NULL) {
		FUNC0(args->bufkva);
		args->buf = NULL;
	}
	if (args->fname_buf != NULL) {
		FUNC2(args->fname_buf, M_TEMP);
		args->fname_buf = NULL;
	}
	if (args->fdp != NULL)
		FUNC1(args->fdp);
}