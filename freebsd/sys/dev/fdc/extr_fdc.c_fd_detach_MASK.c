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
struct fd_data {int /*<<< orphan*/  toffhandle; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ DS_BUSY ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fd_data* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fd_detach_geom ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct fd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (struct fd_data*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct	fd_data *fd;

	fd = FUNC1(dev);
	FUNC3(fd_detach_geom, fd, M_WAITOK, NULL);
	while (FUNC2(dev) == DS_BUSY)
		FUNC4(fd, PZERO, "fdd", hz/10);
	FUNC0(&fd->toffhandle);

	return (0);
}