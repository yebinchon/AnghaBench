#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct mps_softc {int dummy; } ;
struct TYPE_13__ {int BytesToRead; int /*<<< orphan*/  PtrDataBuffer; } ;
typedef  TYPE_1__ mps_fw_diag_unregister_t ;
typedef  TYPE_1__ mps_fw_diag_release_t ;
typedef  TYPE_1__ mps_fw_diag_register_t ;
typedef  TYPE_1__ mps_fw_diag_query_t ;
typedef  TYPE_1__ mps_diag_read_buffer_t ;
typedef  int /*<<< orphan*/  diag_unregister ;
typedef  int /*<<< orphan*/  diag_release ;
typedef  int /*<<< orphan*/  diag_register ;
typedef  int /*<<< orphan*/  diag_read_buffer ;
typedef  int /*<<< orphan*/  diag_query ;

/* Variables and functions */
 int MPS_DIAG_FAILURE ; 
 int MPS_DIAG_SUCCESS ; 
 int MPS_FW_DIAG_ERROR_INVALID_PARAMETER ; 
 int MPS_FW_DIAG_ERROR_SUCCESS ; 
 int MPS_FW_DIAG_NEW ; 
#define  MPS_FW_DIAG_TYPE_QUERY 132 
#define  MPS_FW_DIAG_TYPE_READ_BUFFER 131 
#define  MPS_FW_DIAG_TYPE_REGISTER 130 
#define  MPS_FW_DIAG_TYPE_RELEASE 129 
#define  MPS_FW_DIAG_TYPE_UNREGISTER 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct mps_softc*,TYPE_1__*,int*) ; 
 int FUNC4 (struct mps_softc*,TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct mps_softc*,TYPE_1__*,int*) ; 
 int FUNC6 (struct mps_softc*,TYPE_1__*,int*) ; 
 int FUNC7 (struct mps_softc*,TYPE_1__*,int*) ; 

__attribute__((used)) static int
FUNC8(struct mps_softc *sc, uint32_t action, uint8_t *diag_action,
    uint32_t length, uint32_t *return_code)
{
	mps_fw_diag_register_t		diag_register;
	mps_fw_diag_unregister_t	diag_unregister;
	mps_fw_diag_query_t		diag_query;
	mps_diag_read_buffer_t		diag_read_buffer;
	mps_fw_diag_release_t		diag_release;
	int				status = MPS_DIAG_SUCCESS;
	uint32_t			original_return_code;

	original_return_code = *return_code;
	*return_code = MPS_FW_DIAG_ERROR_SUCCESS;

	switch (action) {
		case MPS_FW_DIAG_TYPE_REGISTER:
			if (!length) {
				*return_code =
				    MPS_FW_DIAG_ERROR_INVALID_PARAMETER;
				status = MPS_DIAG_FAILURE;
				break;
			}
			if (FUNC1(diag_action, &diag_register,
			    sizeof(diag_register)) != 0)
				return (MPS_DIAG_FAILURE);
			status = FUNC5(sc, &diag_register,
			    return_code);
			break;

		case MPS_FW_DIAG_TYPE_UNREGISTER:
			if (length < sizeof(diag_unregister)) {
				*return_code =
				    MPS_FW_DIAG_ERROR_INVALID_PARAMETER;
				status = MPS_DIAG_FAILURE;
				break;
			}
			if (FUNC1(diag_action, &diag_unregister,
			    sizeof(diag_unregister)) != 0)
				return (MPS_DIAG_FAILURE);
			status = FUNC7(sc, &diag_unregister,
			    return_code);
			break;

		case MPS_FW_DIAG_TYPE_QUERY:
			if (length < sizeof (diag_query)) {
				*return_code =
				    MPS_FW_DIAG_ERROR_INVALID_PARAMETER;
				status = MPS_DIAG_FAILURE;
				break;
			}
			if (FUNC1(diag_action, &diag_query, sizeof(diag_query))
			    != 0)
				return (MPS_DIAG_FAILURE);
			status = FUNC3(sc, &diag_query, return_code);
			if (status == MPS_DIAG_SUCCESS)
				if (FUNC2(&diag_query, diag_action,
				    sizeof (diag_query)) != 0)
					return (MPS_DIAG_FAILURE);
			break;

		case MPS_FW_DIAG_TYPE_READ_BUFFER:
			if (FUNC1(diag_action, &diag_read_buffer,
			    sizeof(diag_read_buffer)) != 0)
				return (MPS_DIAG_FAILURE);
			if (length < diag_read_buffer.BytesToRead) {
				*return_code =
				    MPS_FW_DIAG_ERROR_INVALID_PARAMETER;
				status = MPS_DIAG_FAILURE;
				break;
			}
			status = FUNC4(sc, &diag_read_buffer,
			    FUNC0(diag_read_buffer.PtrDataBuffer),
			    return_code);
			if (status == MPS_DIAG_SUCCESS) {
				if (FUNC2(&diag_read_buffer, diag_action,
				    sizeof(diag_read_buffer) -
				    sizeof(diag_read_buffer.PtrDataBuffer)) !=
				    0)
					return (MPS_DIAG_FAILURE);
			}
			break;

		case MPS_FW_DIAG_TYPE_RELEASE:
			if (length < sizeof(diag_release)) {
				*return_code =
				    MPS_FW_DIAG_ERROR_INVALID_PARAMETER;
				status = MPS_DIAG_FAILURE;
				break;
			}
			if (FUNC1(diag_action, &diag_release,
			    sizeof(diag_release)) != 0)
				return (MPS_DIAG_FAILURE);
			status = FUNC6(sc, &diag_release,
			    return_code);
			break;

		default:
			*return_code = MPS_FW_DIAG_ERROR_INVALID_PARAMETER;
			status = MPS_DIAG_FAILURE;
			break;
	}

	if ((status == MPS_DIAG_FAILURE) &&
	    (original_return_code == MPS_FW_DIAG_NEW) &&
	    (*return_code != MPS_FW_DIAG_ERROR_SUCCESS))
		status = MPS_DIAG_SUCCESS;

	return (status);
}