#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ max_concurrent_cmds; } ;
struct TYPE_16__ {int max_cmds; int ffdc_resetcount; size_t adapter_type; int /*<<< orphan*/  timer; TYPE_4__* device_file; int /*<<< orphan*/  dev; TYPE_1__ adapter_info; int /*<<< orphan*/  ffdc_resettime; scalar_t__ (* ips_adapter_reinit ) (TYPE_2__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  sg_dmatag; int /*<<< orphan*/  queue_mtx; int /*<<< orphan*/  adapter_dmatag; int /*<<< orphan*/  command_dmatag; } ;
typedef  TYPE_2__ ips_softc_t ;
struct TYPE_17__ {TYPE_2__* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 size_t IPS_ADAPTER_MAX_T ; 
 scalar_t__ IPS_COMMAND_LEN ; 
 scalar_t__ IPS_MAX_IOBUF_SIZE ; 
 int IPS_MAX_SG_ELEMENTS ; 
 scalar_t__ IPS_MAX_SG_LEN ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  UID_ROOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/ * ips_adapter_name ; 
 int /*<<< orphan*/  ips_cdevsw ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  ips_timeout ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 TYPE_4__* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int,scalar_t__) ; 
 scalar_t__ FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 

int FUNC17(ips_softc_t *sc)
{
        int i;
        FUNC0(1,sc->dev, "initializing\n");

        if (FUNC1(	/* parent    */	sc->adapter_dmatag,
				/* alignemnt */	1,
				/* boundary  */	0,
				/* lowaddr   */	BUS_SPACE_MAXADDR_32BIT,
				/* highaddr  */	BUS_SPACE_MAXADDR,
				/* filter    */	NULL,
				/* filterarg */	NULL,
				/* maxsize   */	IPS_COMMAND_LEN + 
						    IPS_MAX_SG_LEN,
				/* numsegs   */	1,
				/* maxsegsize*/	IPS_COMMAND_LEN + 
						    IPS_MAX_SG_LEN,
				/* flags     */	0,
				/* lockfunc  */ NULL,
				/* lockarg   */ NULL,
				&sc->command_dmatag) != 0) {
                FUNC4(sc->dev, "can't alloc command dma tag\n");
		goto error;
        }
	if (FUNC1(	/* parent    */	sc->adapter_dmatag,
				/* alignemnt */	1,
				/* boundary  */	0,
				/* lowaddr   */	BUS_SPACE_MAXADDR_32BIT,
				/* highaddr  */	BUS_SPACE_MAXADDR,
				/* filter    */	NULL,
				/* filterarg */	NULL,
				/* maxsize   */	IPS_MAX_IOBUF_SIZE,
				/* numsegs   */	IPS_MAX_SG_ELEMENTS,
				/* maxsegsize*/	IPS_MAX_IOBUF_SIZE,
				/* flags     */	0,
				/* lockfunc  */ busdma_lock_mutex,
				/* lockarg   */ &sc->queue_mtx,
				&sc->sg_dmatag) != 0) {
		FUNC4(sc->dev, "can't alloc SG dma tag\n");
		goto error;
	}
	/* create one command buffer until we know how many commands this card
           can handle */
	sc->max_cmds = 1;
	FUNC7(sc);

	if(sc->ips_adapter_reinit(sc, 0))
		goto error;

	/* initialize ffdc values */
	FUNC14(&sc->ffdc_resettime);
	sc->ffdc_resetcount = 1;
	if ((i = FUNC9(sc)) != 0) {
		FUNC4(sc->dev, "failed to send ffdc reset to device (%d)\n", i);
		goto error;
	}
	if ((i = FUNC10(sc)) != 0) {
		FUNC4(sc->dev, "failed to get adapter configuration data from device (%d)\n", i);
		goto error;
	}
	FUNC12(sc); /* no error check as failure doesn't matter */
	if(sc->adapter_type > 0 && sc->adapter_type <= IPS_ADAPTER_MAX_T){
		FUNC4(sc->dev, "adapter type: %s\n", ips_adapter_name[sc->adapter_type]);
	}
 	if ((i = FUNC11(sc)) != 0) {
		FUNC4(sc->dev, "failed to get drive configuration data from device (%d)\n", i);
		goto error;
	}

        FUNC6(sc);
	if(sc->adapter_info.max_concurrent_cmds)
        	sc->max_cmds = FUNC15(128, sc->adapter_info.max_concurrent_cmds);
	else
		sc->max_cmds = 32;
        if(FUNC7(sc)){
		FUNC4(sc->dev, "failed to initialize command buffers\n");
		goto error;
	}
        sc->device_file = FUNC13(&ips_cdevsw, FUNC3(sc->dev), UID_ROOT, GID_OPERATOR,
                                        S_IRUSR | S_IWUSR, "ips%d", FUNC3(sc->dev));
	sc->device_file->si_drv1 = sc;
	FUNC8(sc);
	FUNC2(&sc->timer, 10 * hz, ips_timeout, sc);
        return 0;

error:
	FUNC5(sc);
	return ENXIO;
}