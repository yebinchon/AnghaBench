#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  data_buffer; } ;
typedef  TYPE_2__ ips_user_request ;
struct TYPE_18__ {int /*<<< orphan*/  queue_mtx; int /*<<< orphan*/  adapter_dmatag; } ;
typedef  TYPE_3__ ips_softc_t ;
struct TYPE_16__ {int value; } ;
struct TYPE_19__ {int /*<<< orphan*/  dmatag; int /*<<< orphan*/  dmamap; int /*<<< orphan*/  data_buffer; int /*<<< orphan*/  datasize; TYPE_1__ status; } ;
typedef  TYPE_4__ ips_ioctl_t ;
struct TYPE_20__ {TYPE_4__* arg; } ;
typedef  TYPE_5__ ips_command_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int hz ; 
 int FUNC7 (TYPE_3__*,TYPE_5__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(ips_softc_t *sc, ips_ioctl_t *ioctl_cmd, ips_user_request *user_request)
{
	ips_command_t *command;
	int error = EINVAL;

	if (FUNC1(	/* parent    */	sc->adapter_dmatag,
			/* alignment */	1,
			/* boundary  */	0,
			/* lowaddr   */	BUS_SPACE_MAXADDR_32BIT,
			/* highaddr  */	BUS_SPACE_MAXADDR,
			/* filter    */	NULL,
			/* filterarg */	NULL,
			/* maxsize   */	ioctl_cmd->datasize,
			/* numsegs   */	1,
			/* maxsegsize*/	ioctl_cmd->datasize,
			/* flags     */	0,
			/* lockfunc  */ NULL,
			/* lockarg   */ NULL,
			&ioctl_cmd->dmatag) != 0) {
		return ENOMEM;
        }
	if(FUNC3(ioctl_cmd->dmatag, &ioctl_cmd->data_buffer, 
	   0, &ioctl_cmd->dmamap)){
		error = ENOMEM;
		goto exit;
	}
	if(FUNC5(user_request->data_buffer,ioctl_cmd->data_buffer, 
	    ioctl_cmd->datasize))
		goto exit;
	ioctl_cmd->status.value = 0xffffffff;
	FUNC11(&sc->queue_mtx);
	if((error = FUNC7(sc, &command, 0)) > 0){
		error = ENOMEM;
		FUNC12(&sc->queue_mtx);
		goto exit;
	}
	command->arg = ioctl_cmd;
	FUNC9(command);
	while( ioctl_cmd->status.value == 0xffffffff)
		FUNC10(ioctl_cmd, &sc->queue_mtx, 0, "ips", hz/10);
	if(FUNC0(ioctl_cmd))
		error = EIO;
	else
		error = 0;
	FUNC12(&sc->queue_mtx);
	if(FUNC6(ioctl_cmd->data_buffer, user_request->data_buffer,
	    ioctl_cmd->datasize))
		error = EINVAL;
	FUNC11(&sc->queue_mtx);
	FUNC8(sc, command);
	FUNC12(&sc->queue_mtx);

exit:	FUNC4(ioctl_cmd->dmatag, ioctl_cmd->data_buffer,
			ioctl_cmd->dmamap);
	FUNC2(ioctl_cmd->dmatag);
	return error;
}