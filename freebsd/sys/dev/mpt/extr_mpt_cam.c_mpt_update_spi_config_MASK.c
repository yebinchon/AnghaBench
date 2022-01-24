#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct mpt_softc {TYPE_1__* mpt_dev_page1; } ;
struct TYPE_3__ {int /*<<< orphan*/  Header; int /*<<< orphan*/  RequestedParameters; } ;
typedef  TYPE_1__ CONFIG_PAGE_SCSI_DEVICE_1 ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MPT_PRT_NEGOTIATION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_softc*,char*) ; 
 int FUNC3 (struct mpt_softc*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct mpt_softc *mpt, int tgt)
{
	CONFIG_PAGE_SCSI_DEVICE_1 tmp;
	int rv;

	FUNC1(mpt, MPT_PRT_NEGOTIATION,
	    "mpt_update_spi_config[%d].page1: Requested Params 0x%08x\n",
	    tgt, mpt->mpt_dev_page1[tgt].RequestedParameters);
	tmp = mpt->mpt_dev_page1[tgt];
	FUNC0(&tmp);
	rv = FUNC3(mpt, tgt,
	    &tmp.Header, sizeof(tmp), FALSE, 5000);
	if (rv) {
		FUNC2(mpt, "mpt_update_spi_config: write cur page failed\n");
		return (-1);
	}
	return (0);
}