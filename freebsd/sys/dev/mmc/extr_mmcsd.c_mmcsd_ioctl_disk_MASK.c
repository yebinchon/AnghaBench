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
typedef  int /*<<< orphan*/  u_long ;
struct thread {int dummy; } ;
struct disk {int /*<<< orphan*/  d_drv1; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,struct thread*) ; 

__attribute__((used)) static int
FUNC1(struct disk *disk, u_long cmd, void *data, int fflag,
    struct thread *td)
{

	return (FUNC0(disk->d_drv1, cmd, data, fflag, td));
}