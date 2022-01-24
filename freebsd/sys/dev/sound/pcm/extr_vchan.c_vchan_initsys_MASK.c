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
struct snddev_info {int /*<<< orphan*/  rec_sysctl_tree; int /*<<< orphan*/  rec_sysctl_ctx; int /*<<< orphan*/  play_sysctl_tree; int /*<<< orphan*/  play_sysctl_ctx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RWTUN ; 
 int CTLTYPE_INT ; 
 int CTLTYPE_STRING ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  PLAY ; 
 int /*<<< orphan*/  REC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCHAN_SYSCTL_DATA_SIZE ; 
 struct snddev_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_dev_pcm_vchanformat ; 
 int /*<<< orphan*/  sysctl_dev_pcm_vchanmode ; 
 int /*<<< orphan*/  sysctl_dev_pcm_vchanrate ; 
 int /*<<< orphan*/  sysctl_dev_pcm_vchans ; 

void
FUNC5(device_t dev)
{
	struct snddev_info *d;
	int unit;

	unit = FUNC4(dev);
	d = FUNC3(dev);

	/* Play */
	FUNC0(&d->play_sysctl_ctx,
	    FUNC1(d->play_sysctl_tree),
	    OID_AUTO, "vchans", CTLTYPE_INT | CTLFLAG_RWTUN,
	    FUNC2(unit, PLAY), VCHAN_SYSCTL_DATA_SIZE,
	    sysctl_dev_pcm_vchans, "I", "total allocated virtual channel");
	FUNC0(&d->play_sysctl_ctx,
	    FUNC1(d->play_sysctl_tree),
	    OID_AUTO, "vchanmode", CTLTYPE_STRING | CTLFLAG_RWTUN,
	    FUNC2(unit, PLAY), VCHAN_SYSCTL_DATA_SIZE,
	    sysctl_dev_pcm_vchanmode, "A",
	    "vchan format/rate selection: 0=fixed, 1=passthrough, 2=adaptive");
	FUNC0(&d->play_sysctl_ctx,
	    FUNC1(d->play_sysctl_tree),
	    OID_AUTO, "vchanrate", CTLTYPE_INT | CTLFLAG_RWTUN,
	    FUNC2(unit, PLAY), VCHAN_SYSCTL_DATA_SIZE,
	    sysctl_dev_pcm_vchanrate, "I", "virtual channel mixing speed/rate");
	FUNC0(&d->play_sysctl_ctx,
	    FUNC1(d->play_sysctl_tree),
	    OID_AUTO, "vchanformat", CTLTYPE_STRING | CTLFLAG_RWTUN,
	    FUNC2(unit, PLAY), VCHAN_SYSCTL_DATA_SIZE,
	    sysctl_dev_pcm_vchanformat, "A", "virtual channel mixing format");
	/* Rec */
	FUNC0(&d->rec_sysctl_ctx,
	    FUNC1(d->rec_sysctl_tree),
	    OID_AUTO, "vchans", CTLTYPE_INT | CTLFLAG_RWTUN,
	    FUNC2(unit, REC), VCHAN_SYSCTL_DATA_SIZE,
	    sysctl_dev_pcm_vchans, "I", "total allocated virtual channel");
	FUNC0(&d->rec_sysctl_ctx,
	    FUNC1(d->rec_sysctl_tree),
	    OID_AUTO, "vchanmode", CTLTYPE_STRING | CTLFLAG_RWTUN,
	    FUNC2(unit, REC), VCHAN_SYSCTL_DATA_SIZE,
	    sysctl_dev_pcm_vchanmode, "A",
	    "vchan format/rate selection: 0=fixed, 1=passthrough, 2=adaptive");
	FUNC0(&d->rec_sysctl_ctx,
	    FUNC1(d->rec_sysctl_tree),
	    OID_AUTO, "vchanrate", CTLTYPE_INT | CTLFLAG_RWTUN,
	    FUNC2(unit, REC), VCHAN_SYSCTL_DATA_SIZE,
	    sysctl_dev_pcm_vchanrate, "I", "virtual channel mixing speed/rate");
	FUNC0(&d->rec_sysctl_ctx,
	    FUNC1(d->rec_sysctl_tree),
	    OID_AUTO, "vchanformat", CTLTYPE_STRING | CTLFLAG_RWTUN,
	    FUNC2(unit, REC), VCHAN_SYSCTL_DATA_SIZE,
	    sysctl_dev_pcm_vchanformat, "A", "virtual channel mixing format");
}