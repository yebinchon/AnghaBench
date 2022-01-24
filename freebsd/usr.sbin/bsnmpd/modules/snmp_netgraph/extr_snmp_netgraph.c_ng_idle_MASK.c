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
struct csock_buf {int /*<<< orphan*/  path; int /*<<< orphan*/  mesg; } ;

/* Variables and functions */
 struct csock_buf* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  csock_bufs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct csock_buf*) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct csock_buf *b;

	/* execute waiting csock_bufs */
	while ((b = FUNC0(&csock_bufs)) != NULL) {
		FUNC1(&csock_bufs, link);
		FUNC2(b->mesg, b->path);
		FUNC3(b);
	}
}