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
struct thread {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ve_mutex ; 
 int /*<<< orphan*/  veriexec_dev_head ; 
 int /*<<< orphan*/  veriexec_file_dev_head ; 

int
FUNC3(dev_t fsid, struct thread *td)
{
    int error;

    /*
     * The device can have entries on both lists.
     */
    FUNC1(&ve_mutex);
    error = FUNC0(fsid, &veriexec_dev_head);
    if (error && error != ENOENT) {
	    FUNC2(&ve_mutex);
	    return error;
    }
    error = FUNC0(fsid, &veriexec_file_dev_head);
    FUNC2(&ve_mutex);
    if (error && error != ENOENT) {
	    return error;
    }
    return 0;
}