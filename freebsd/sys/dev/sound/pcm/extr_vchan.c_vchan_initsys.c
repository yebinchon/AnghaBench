
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snddev_info {int rec_sysctl_tree; int rec_sysctl_ctx; int play_sysctl_tree; int play_sysctl_ctx; } ;
typedef int device_t ;


 int CTLFLAG_RWTUN ;
 int CTLTYPE_INT ;
 int CTLTYPE_STRING ;
 int OID_AUTO ;
 int PLAY ;
 int REC ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,int ,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int VCHAN_SYSCTL_DATA (int,int ) ;
 int VCHAN_SYSCTL_DATA_SIZE ;
 struct snddev_info* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int sysctl_dev_pcm_vchanformat ;
 int sysctl_dev_pcm_vchanmode ;
 int sysctl_dev_pcm_vchanrate ;
 int sysctl_dev_pcm_vchans ;

void
vchan_initsys(device_t dev)
{
 struct snddev_info *d;
 int unit;

 unit = device_get_unit(dev);
 d = device_get_softc(dev);


 SYSCTL_ADD_PROC(&d->play_sysctl_ctx,
     SYSCTL_CHILDREN(d->play_sysctl_tree),
     OID_AUTO, "vchans", CTLTYPE_INT | CTLFLAG_RWTUN,
     VCHAN_SYSCTL_DATA(unit, PLAY), VCHAN_SYSCTL_DATA_SIZE,
     sysctl_dev_pcm_vchans, "I", "total allocated virtual channel");
 SYSCTL_ADD_PROC(&d->play_sysctl_ctx,
     SYSCTL_CHILDREN(d->play_sysctl_tree),
     OID_AUTO, "vchanmode", CTLTYPE_STRING | CTLFLAG_RWTUN,
     VCHAN_SYSCTL_DATA(unit, PLAY), VCHAN_SYSCTL_DATA_SIZE,
     sysctl_dev_pcm_vchanmode, "A",
     "vchan format/rate selection: 0=fixed, 1=passthrough, 2=adaptive");
 SYSCTL_ADD_PROC(&d->play_sysctl_ctx,
     SYSCTL_CHILDREN(d->play_sysctl_tree),
     OID_AUTO, "vchanrate", CTLTYPE_INT | CTLFLAG_RWTUN,
     VCHAN_SYSCTL_DATA(unit, PLAY), VCHAN_SYSCTL_DATA_SIZE,
     sysctl_dev_pcm_vchanrate, "I", "virtual channel mixing speed/rate");
 SYSCTL_ADD_PROC(&d->play_sysctl_ctx,
     SYSCTL_CHILDREN(d->play_sysctl_tree),
     OID_AUTO, "vchanformat", CTLTYPE_STRING | CTLFLAG_RWTUN,
     VCHAN_SYSCTL_DATA(unit, PLAY), VCHAN_SYSCTL_DATA_SIZE,
     sysctl_dev_pcm_vchanformat, "A", "virtual channel mixing format");

 SYSCTL_ADD_PROC(&d->rec_sysctl_ctx,
     SYSCTL_CHILDREN(d->rec_sysctl_tree),
     OID_AUTO, "vchans", CTLTYPE_INT | CTLFLAG_RWTUN,
     VCHAN_SYSCTL_DATA(unit, REC), VCHAN_SYSCTL_DATA_SIZE,
     sysctl_dev_pcm_vchans, "I", "total allocated virtual channel");
 SYSCTL_ADD_PROC(&d->rec_sysctl_ctx,
     SYSCTL_CHILDREN(d->rec_sysctl_tree),
     OID_AUTO, "vchanmode", CTLTYPE_STRING | CTLFLAG_RWTUN,
     VCHAN_SYSCTL_DATA(unit, REC), VCHAN_SYSCTL_DATA_SIZE,
     sysctl_dev_pcm_vchanmode, "A",
     "vchan format/rate selection: 0=fixed, 1=passthrough, 2=adaptive");
 SYSCTL_ADD_PROC(&d->rec_sysctl_ctx,
     SYSCTL_CHILDREN(d->rec_sysctl_tree),
     OID_AUTO, "vchanrate", CTLTYPE_INT | CTLFLAG_RWTUN,
     VCHAN_SYSCTL_DATA(unit, REC), VCHAN_SYSCTL_DATA_SIZE,
     sysctl_dev_pcm_vchanrate, "I", "virtual channel mixing speed/rate");
 SYSCTL_ADD_PROC(&d->rec_sysctl_ctx,
     SYSCTL_CHILDREN(d->rec_sysctl_tree),
     OID_AUTO, "vchanformat", CTLTYPE_STRING | CTLFLAG_RWTUN,
     VCHAN_SYSCTL_DATA(unit, REC), VCHAN_SYSCTL_DATA_SIZE,
     sysctl_dev_pcm_vchanformat, "A", "virtual channel mixing format");
}
