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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_2__ {struct ISCI_CONTROLLER* ich_arg; int /*<<< orphan*/ * ich_func; } ;
struct isci_softc {int coalesce_number; int coalesce_timeout; int controller_count; TYPE_1__ config_hook; struct ISCI_CONTROLLER* controllers; int /*<<< orphan*/  sci_library_handle; int /*<<< orphan*/  oem_parameters_found; int /*<<< orphan*/  pci_common_header; int /*<<< orphan*/  device; int /*<<< orphan*/  sci_library_memory; } ;
struct ISCI_CONTROLLER {int index; int /*<<< orphan*/  scif_controller_handle; } ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  M_ISCI ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int SCIC_LOG_OBJECT_COMPLETION_QUEUE ; 
 int SCIC_LOG_OBJECT_CONTROLLER ; 
 int SCIC_LOG_OBJECT_SMP_IO_REQUEST ; 
 int SCIC_LOG_OBJECT_SSP_IO_REQUEST ; 
 int SCIC_LOG_OBJECT_STP_IO_REQUEST ; 
 int SCIF_LOG_OBJECT_CONTROLLER ; 
 int SCIF_LOG_OBJECT_IO_REQUEST ; 
 int SCI_LOG_VERBOSITY_ERROR ; 
 int SCI_LOG_VERBOSITY_INFO ; 
 int SCI_LOG_VERBOSITY_TRACE ; 
 int SCI_LOG_VERBOSITY_WARNING ; 
 int /*<<< orphan*/  SCI_MAX_CONTROLLERS ; 
 int SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  g_isci_debug_level ; 
 int FUNC2 (struct ISCI_CONTROLLER*) ; 
 int /*<<< orphan*/  FUNC3 (struct ISCI_CONTROLLER*,struct isci_softc*) ; 
 int FUNC4 (struct ISCI_CONTROLLER*) ; 
 int /*<<< orphan*/  isci_controller_start ; 
 int /*<<< orphan*/  FUNC5 (struct isci_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,void*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

int
FUNC18(struct isci_softc *isci)
{
	int error;
	uint32_t status = 0;
	uint32_t library_object_size;
	uint32_t verbosity_mask;
	uint32_t scic_log_object_mask;
	uint32_t scif_log_object_mask;
	uint8_t *header_buffer;

	library_object_size = FUNC16(SCI_MAX_CONTROLLERS);

	isci->sci_library_memory =
	    FUNC7(library_object_size, M_ISCI, M_NOWAIT | M_ZERO );

	isci->sci_library_handle = FUNC15(
	    isci->sci_library_memory, SCI_MAX_CONTROLLERS);

	FUNC11( isci->sci_library_handle, (void *)isci);

	verbosity_mask = (1<<SCI_LOG_VERBOSITY_ERROR) |
	    (1<<SCI_LOG_VERBOSITY_WARNING) | (1<<SCI_LOG_VERBOSITY_INFO) |
	    (1<<SCI_LOG_VERBOSITY_TRACE);

	scic_log_object_mask = 0xFFFFFFFF;
	scic_log_object_mask &= ~SCIC_LOG_OBJECT_COMPLETION_QUEUE;
	scic_log_object_mask &= ~SCIC_LOG_OBJECT_SSP_IO_REQUEST;
	scic_log_object_mask &= ~SCIC_LOG_OBJECT_STP_IO_REQUEST;
	scic_log_object_mask &= ~SCIC_LOG_OBJECT_SMP_IO_REQUEST;
	scic_log_object_mask &= ~SCIC_LOG_OBJECT_CONTROLLER;

	scif_log_object_mask = 0xFFFFFFFF;
	scif_log_object_mask &= ~SCIF_LOG_OBJECT_CONTROLLER;
	scif_log_object_mask &= ~SCIF_LOG_OBJECT_IO_REQUEST;

	FUNC0("hw.isci.debug_level", &g_isci_debug_level);

	FUNC9(FUNC10(isci->sci_library_handle),
	    scif_log_object_mask, verbosity_mask);

	FUNC9(FUNC10(
	    FUNC17(isci->sci_library_handle)),
	    scic_log_object_mask, verbosity_mask);

	header_buffer = (uint8_t *)&isci->pci_common_header;
	for (uint8_t i = 0; i < sizeof(isci->pci_common_header); i++)
		header_buffer[i] = FUNC8(isci->device, i, 1);

	FUNC13(
	    FUNC17(isci->sci_library_handle),
	    &isci->pci_common_header);

	isci->oem_parameters_found = FALSE;

	FUNC5(isci);

	/* trigger interrupt if 32 completions occur before timeout expires */
	isci->coalesce_number = 32;

	/* trigger interrupt if 2 microseconds elapse after a completion occurs,
	 *  regardless if "coalesce_number" completions have occurred
	 */
	isci->coalesce_timeout = 2;

	isci->controller_count = FUNC12(
	    FUNC17(isci->sci_library_handle));

	for (int index = 0; index < isci->controller_count; index++) {
		struct ISCI_CONTROLLER *controller = &isci->controllers[index];
		SCI_CONTROLLER_HANDLE_T scif_controller_handle;

		controller->index = index;
		FUNC3(controller, isci);

		scif_controller_handle = controller->scif_controller_handle;

		status = FUNC4(controller);

		if(status != SCI_SUCCESS) {
			FUNC6(0, "ISCI",
			    "isci_controller_initialize FAILED: %x\n",
			    status);
			return (status);
		}

		error = FUNC2(controller);

		if (error != 0)
			return (error);

		FUNC14(
		    scif_controller_handle, isci->coalesce_number,
		    isci->coalesce_timeout);
	}

	/* FreeBSD provides us a hook to ensure we get a chance to start
	 *  our controllers and complete initial domain discovery before
	 *  it searches for the boot device.  Once we're done, we'll
	 *  disestablish the hook, signaling the kernel that is can proceed
	 *  with the boot process.
	 */
	isci->config_hook.ich_func = &isci_controller_start;
	isci->config_hook.ich_arg = &isci->controllers[0];

	if (FUNC1(&isci->config_hook) != 0)
		FUNC6(0, "ISCI",
		    "config_intrhook_establish failed!\n");

	return (status);
}