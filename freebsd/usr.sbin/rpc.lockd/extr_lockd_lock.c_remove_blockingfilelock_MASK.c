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
struct file_lock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file_lock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  nfslocklist ; 

void
FUNC2(struct file_lock *fl)
{

	FUNC1("Entering remove_blockingfilelock\n");

	FUNC0(fl, nfslocklist);

	FUNC1("Exiting remove_blockingfilelock\n");
}