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
struct vtscsi_softc {int /*<<< orphan*/  vtscsi_dev; } ;
struct virtio_scsi_config {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct virtio_scsi_config*) ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_scsi_config*,int) ; 
 int /*<<< orphan*/  cdb_size ; 
 int /*<<< orphan*/  cmd_per_lun ; 
 int /*<<< orphan*/  event_info_size ; 
 int /*<<< orphan*/  max_channel ; 
 int /*<<< orphan*/  max_lun ; 
 int /*<<< orphan*/  max_sectors ; 
 int /*<<< orphan*/  max_target ; 
 int /*<<< orphan*/  num_queues ; 
 int /*<<< orphan*/  seg_max ; 
 int /*<<< orphan*/  sense_size ; 

__attribute__((used)) static void
FUNC2(struct vtscsi_softc *sc,
    struct virtio_scsi_config *scsicfg)
{
	device_t dev;

	dev = sc->vtscsi_dev;

	FUNC1(scsicfg, sizeof(struct virtio_scsi_config));

	FUNC0(dev, num_queues, scsicfg);
	FUNC0(dev, seg_max, scsicfg);
	FUNC0(dev, max_sectors, scsicfg);
	FUNC0(dev, cmd_per_lun, scsicfg);
	FUNC0(dev, event_info_size, scsicfg);
	FUNC0(dev, sense_size, scsicfg);
	FUNC0(dev, cdb_size, scsicfg);
	FUNC0(dev, max_channel, scsicfg);
	FUNC0(dev, max_target, scsicfg);
	FUNC0(dev, max_lun, scsicfg);
}