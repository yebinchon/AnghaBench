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
struct mly_softc {int /*<<< orphan*/ * mly_cam_sim; } ;
struct cam_periph {int dummy; } ;
struct cam_path {int dummy; } ;

/* Variables and functions */
 int CAM_REQ_CMP ; 
 struct cam_periph* FUNC0 (struct cam_path*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_path*) ; 

__attribute__((used)) static struct cam_periph *
FUNC4(struct mly_softc *sc, int bus, int target)
{
    struct cam_periph	*periph;
    struct cam_path	*path;
    int			status;

    status = FUNC2(&path, NULL, FUNC1(sc->mly_cam_sim[bus]), target, 0);
    if (status == CAM_REQ_CMP) {
	periph = FUNC0(path, NULL);
	FUNC3(path);
    } else {
	periph = NULL;
    }
    return(periph);
}