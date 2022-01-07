
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int hwvol_step; int hwvol_mixer; } ;
struct cdev {struct snd_mixer* si_drv1; } ;
typedef int device_t ;


 int CTLFLAG_RWTUN ;
 int CTLTYPE_STRING ;
 int OID_AUTO ;
 int SOUND_MIXER_VOLUME ;
 int SYSCTL_ADD_INT (int ,int ,int ,char*,int,int*,int ,char*) ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,struct snd_mixer*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 struct cdev* mixer_get_devt (int ) ;
 int sysctl_hw_snd_hwvol_mixer ;

int
mixer_hwvol_init(device_t dev)
{
 struct snd_mixer *m;
 struct cdev *pdev;

 pdev = mixer_get_devt(dev);
 m = pdev->si_drv1;

 m->hwvol_mixer = SOUND_MIXER_VOLUME;
 m->hwvol_step = 5;
 SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
            OID_AUTO, "hwvol_step", CTLFLAG_RWTUN, &m->hwvol_step, 0, "");
 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
            OID_AUTO, "hwvol_mixer", CTLTYPE_STRING | CTLFLAG_RWTUN, m, 0,
     sysctl_hw_snd_hwvol_mixer, "A", "");
 return 0;
}
