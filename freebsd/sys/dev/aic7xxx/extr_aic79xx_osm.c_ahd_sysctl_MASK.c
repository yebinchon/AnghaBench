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
typedef  size_t u_int ;
struct ahd_softc {void** sysctl_tree; int /*<<< orphan*/ * sysctl_ctx; int /*<<< orphan*/ * summerr; int /*<<< orphan*/  dev_softc; } ;

/* Variables and functions */
 size_t AHD_ERRORS_CORRECTABLE ; 
 size_t AHD_ERRORS_NUMBER ; 
 size_t AHD_SYSCTL_DEBUG ; 
 size_t AHD_SYSCTL_NUMBER ; 
 size_t AHD_SYSCTL_ROOT ; 
 size_t AHD_SYSCTL_SUMMARY ; 
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_UINT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct ahd_softc*,size_t,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _hw ; 
 int /*<<< orphan*/  ahd_clear_allcounters ; 
 int /*<<< orphan*/  ahd_set_debugcounters ; 
 char** ahd_sysctl_errors_descriptions ; 
 char** ahd_sysctl_errors_elements ; 
 int /*<<< orphan*/ * ahd_sysctl_node_descriptions ; 
 int /*<<< orphan*/ * ahd_sysctl_node_elements ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct ahd_softc *ahd)
{
	u_int i;

	for (i = 0; i < AHD_SYSCTL_NUMBER; i++)
		FUNC6(&ahd->sysctl_ctx[i]);

	ahd->sysctl_tree[AHD_SYSCTL_ROOT] =
	    FUNC0(&ahd->sysctl_ctx[AHD_SYSCTL_ROOT],
			    FUNC4(_hw), OID_AUTO,
			    FUNC5(ahd->dev_softc), CTLFLAG_RD, 0,
			    ahd_sysctl_node_descriptions[AHD_SYSCTL_ROOT]);
	    FUNC1(&ahd->sysctl_ctx[AHD_SYSCTL_ROOT],
			    FUNC3(ahd->sysctl_tree[AHD_SYSCTL_ROOT]),
			    OID_AUTO, "clear", CTLTYPE_UINT | CTLFLAG_RW, ahd,
			    0, ahd_clear_allcounters, "IU",
			    "Clear all counters");

	for (i = AHD_SYSCTL_SUMMARY; i < AHD_SYSCTL_NUMBER; i++)
		ahd->sysctl_tree[i] =
		    FUNC0(&ahd->sysctl_ctx[i],
				    FUNC3(ahd->sysctl_tree[AHD_SYSCTL_ROOT]),
				    OID_AUTO, ahd_sysctl_node_elements[i],
				    CTLFLAG_RD, 0,
				    ahd_sysctl_node_descriptions[i]);

	for (i = AHD_ERRORS_CORRECTABLE; i < AHD_ERRORS_NUMBER; i++) {
		FUNC2(&ahd->sysctl_ctx[AHD_SYSCTL_SUMMARY],
				FUNC3(ahd->sysctl_tree[AHD_SYSCTL_SUMMARY]),
				OID_AUTO, ahd_sysctl_errors_elements[i],
				CTLFLAG_RD, &ahd->summerr[i], i,
				ahd_sysctl_errors_descriptions[i]);
		FUNC1(&ahd->sysctl_ctx[AHD_SYSCTL_DEBUG],
				FUNC3(ahd->sysctl_tree[AHD_SYSCTL_DEBUG]),
				OID_AUTO, ahd_sysctl_errors_elements[i],
				CTLFLAG_RW | CTLTYPE_UINT, ahd, i,
				ahd_set_debugcounters, "IU",
				ahd_sysctl_errors_descriptions[i]);
	}
}