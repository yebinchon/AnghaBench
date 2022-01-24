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
typedef  int /*<<< orphan*/  u_int ;
struct cam_path {int dummy; } ;
struct ahd_softc {TYPE_1__* platform_data; } ;
typedef  int /*<<< orphan*/  path_id_t ;
struct TYPE_2__ {int /*<<< orphan*/  sim; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct ahd_softc *ahd, char channel, u_int target,
	        u_int lun, struct cam_path **path)
{
	path_id_t path_id;

	path_id = FUNC0(ahd->platform_data->sim);
	return (FUNC1(path, /*periph*/NULL,
				path_id, target, lun));
}