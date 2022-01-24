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
struct ata_request {int flags; TYPE_1__* dma; } ;
struct TYPE_2__ {int /*<<< orphan*/  data_map; int /*<<< orphan*/  data_tag; int /*<<< orphan*/  sg_map; int /*<<< orphan*/  sg_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_request*,char*) ; 
 int ATA_R_READ ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct ata_request *request)
{
    FUNC0(request, "dmaunload");

    if (request->dma) {
	FUNC1(request->dma->sg_tag, request->dma->sg_map,
			BUS_DMASYNC_POSTWRITE);
	FUNC1(request->dma->data_tag, request->dma->data_map,
			(request->flags & ATA_R_READ) ?
			BUS_DMASYNC_POSTREAD : BUS_DMASYNC_POSTWRITE);

	FUNC2(request->dma->data_tag, request->dma->data_map);
        request->dma = NULL;
    }
    return 0;
}