
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snddev_info {int flags; int bufsz; } ;
typedef int device_t ;
typedef int d ;


 int CTLFLAG_RD ;
 int CTLFLAG_RWTUN ;
 int CTLTYPE_INT ;
 int CTLTYPE_UINT ;
 int OID_AUTO ;
 int SD_F_AUTOVCHAN ;
 int SD_F_EQ ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,struct snddev_info*,int,int ,char*,char*) ;
 int SYSCTL_ADD_UINT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 struct snddev_info* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int feeder_eq_initsys (int ) ;
 int sysctl_dev_pcm_bitperfect ;
 int sysctl_dev_pcm_clone_deadline ;
 int sysctl_dev_pcm_clone_flags ;
 int sysctl_dev_pcm_clone_gc ;
 int vchan_initsys (int ) ;

__attribute__((used)) static void
pcm_sysinit(device_t dev)
{
   struct snddev_info *d = device_get_softc(dev);



 SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
            OID_AUTO, "buffersize", CTLFLAG_RD, &d->bufsz, 0, "allocated buffer size");
 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "bitperfect", CTLTYPE_INT | CTLFLAG_RWTUN, d, sizeof(d),
     sysctl_dev_pcm_bitperfect, "I",
     "bit-perfect playback/recording (0=disable, 1=enable)");
 if (d->flags & SD_F_AUTOVCHAN)
  vchan_initsys(dev);
 if (d->flags & SD_F_EQ)
  feeder_eq_initsys(dev);
}
