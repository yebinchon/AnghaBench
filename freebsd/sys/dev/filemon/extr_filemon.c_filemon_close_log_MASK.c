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
typedef  int /*<<< orphan*/  uintmax_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct filemon {int /*<<< orphan*/  lock; struct file* fp; int /*<<< orphan*/  msgbufr; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct filemon*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct filemon *filemon)
{
	struct file *fp;
	struct timeval now;
	size_t len;

	FUNC4(&filemon->lock, SA_XLOCKED);
	if (filemon->fp == NULL)
		return;

	FUNC2(&now);

	len = FUNC3(filemon->msgbufr,
	    sizeof(filemon->msgbufr),
	    "# Stop %ju.%06ju\n# Bye bye\n",
	    (uintmax_t)now.tv_sec, (uintmax_t)now.tv_usec);

	if (len < sizeof(filemon->msgbufr))
		FUNC1(filemon, filemon->msgbufr, len);
	fp = filemon->fp;
	filemon->fp = NULL;

	FUNC6(&filemon->lock);
	FUNC0(fp, curthread);
	FUNC5(&filemon->lock);
}