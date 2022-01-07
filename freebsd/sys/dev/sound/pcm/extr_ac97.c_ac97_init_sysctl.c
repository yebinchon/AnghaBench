
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct ac97_info {int * dev; int lock; } ;
typedef int codec ;


 int AC97_REG_POWER ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,struct ac97_info*,int,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int ac97_rdcd (struct ac97_info*,int ) ;
 int ac97_wrcd (struct ac97_info*,int ,int) ;
 int device_get_sysctl_ctx (int *) ;
 int device_get_sysctl_tree (int *) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int sysctl_hw_snd_ac97_eapd ;

__attribute__((used)) static void
ac97_init_sysctl(struct ac97_info *codec)
{
 u_int16_t orig, val;

 if (codec == ((void*)0) || codec->dev == ((void*)0))
  return;
 snd_mtxlock(codec->lock);
 orig = ac97_rdcd(codec, AC97_REG_POWER);
 ac97_wrcd(codec, AC97_REG_POWER, orig ^ 0x8000);
 val = ac97_rdcd(codec, AC97_REG_POWER);
 ac97_wrcd(codec, AC97_REG_POWER, orig);
 snd_mtxunlock(codec->lock);
 if ((val & 0x8000) == (orig & 0x8000))
  return;
 SYSCTL_ADD_PROC(device_get_sysctl_ctx(codec->dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(codec->dev)),
            OID_AUTO, "eapd", CTLTYPE_INT | CTLFLAG_RW,
     codec, sizeof(codec), sysctl_hw_snd_ac97_eapd,
     "I", "AC97 External Amplifier");
}
