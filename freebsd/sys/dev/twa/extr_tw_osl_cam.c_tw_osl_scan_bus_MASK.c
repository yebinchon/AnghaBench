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
struct twa_softc {int dummy; } ;
struct tw_cl_ctlr_handle {struct twa_softc* osl_ctlr_ctxt; } ;
typedef  int /*<<< orphan*/  TW_VOID ;
typedef  int /*<<< orphan*/  TW_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_ERROR_STRING ; 
 int /*<<< orphan*/  FUNC0 (struct twa_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct twa_softc*) ; 

TW_VOID
FUNC2(struct tw_cl_ctlr_handle *ctlr_handle)
{
	struct twa_softc	*sc = ctlr_handle->osl_ctlr_ctxt;
	TW_INT32		error;

	if ((error = FUNC1(sc)))
		FUNC0(sc, "error = %d",
			TW_CL_SEVERITY_ERROR_STRING,
			TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
			0x2109,
			"Bus scan request to CAM failed",
			error);
}