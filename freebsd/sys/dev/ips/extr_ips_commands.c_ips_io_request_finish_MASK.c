#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct bio {int /*<<< orphan*/  bio_error; int /*<<< orphan*/  bio_flags; } ;
struct TYPE_6__ {int value; } ;
struct TYPE_7__ {int /*<<< orphan*/  sc; TYPE_1__ status; int /*<<< orphan*/  data_dmamap; int /*<<< orphan*/  data_dmatag; struct bio* arg; } ;
typedef  TYPE_2__ ips_command_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_ERROR ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static void FUNC7(ips_command_t *command)
{

	struct bio *iobuf = command->arg;
	if(FUNC4(iobuf)) {
		FUNC1(command->data_dmatag, command->data_dmamap, 
				BUS_DMASYNC_POSTREAD);
	} else {
		FUNC1(command->data_dmatag, command->data_dmamap, 
				BUS_DMASYNC_POSTWRITE);
	}
	FUNC2(command->data_dmatag, command->data_dmamap);
	if(FUNC0(command)){
		iobuf->bio_flags |=BIO_ERROR;
		iobuf->bio_error = EIO;
		FUNC6("ips: io error, status= 0x%x\n", command->status.value);
	}
	FUNC3(command->sc, command);
	FUNC5(iobuf);
}