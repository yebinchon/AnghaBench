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
struct ciss_softc {TYPE_1__** ciss_logical; int /*<<< orphan*/ * ciss_cam_sim; } ;
struct cam_periph {char* periph_name; int /*<<< orphan*/  unit_number; } ;
struct cam_path {int dummy; } ;
struct TYPE_2__ {scalar_t__* cl_name; } ;

/* Variables and functions */
 int CAM_REQ_CMP ; 
 scalar_t__ FUNC0 (int) ; 
 int ENOENT ; 
 struct cam_periph* FUNC1 (struct cam_path*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_path*) ; 

__attribute__((used)) static int
FUNC8(struct ciss_softc *sc, int bus, int target)
{
    struct cam_periph	*periph;
    struct cam_path	*path;
    int			status;

    if (FUNC0(bus))
	return (0);

    status = FUNC4(&path, NULL, FUNC2(sc->ciss_cam_sim[bus]),
			     target, 0);

    if (status == CAM_REQ_CMP) {
	FUNC6(path);
	periph = FUNC1(path, NULL);
	FUNC7(path);
	FUNC5(path);
	if (periph != NULL) {
		FUNC3(sc->ciss_logical[bus][target].cl_name, "%s%d",
			periph->periph_name, periph->unit_number);
		return(0);
	}
    }
    sc->ciss_logical[bus][target].cl_name[0] = 0;
    return(ENOENT);
}