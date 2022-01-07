
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct hdaa_audio_ctl {int left; int right; int dir; int index; TYPE_1__* widget; scalar_t__ muted; scalar_t__ forcemute; } ;
typedef int nid_t ;
struct TYPE_2__ {int devinfo; int nid; } ;


 int HDAA_AMP_LEFT_MUTED (scalar_t__) ;
 scalar_t__ HDAA_AMP_MUTE_DEFAULT ;
 int HDAA_AMP_RIGHT_MUTED (scalar_t__) ;
 int HDAA_AMP_VOL_DEFAULT ;
 int HDAA_CTL_IN ;
 int HDAA_CTL_OUT ;
 int hdaa_audio_ctl_amp_set_internal (int ,int ,int ,int,int,int,int,int) ;

__attribute__((used)) static void
hdaa_audio_ctl_amp_set(struct hdaa_audio_ctl *ctl, uint32_t mute,
      int left, int right)
{
 nid_t nid;
 int lmute, rmute;

 nid = ctl->widget->nid;


 if (mute != HDAA_AMP_MUTE_DEFAULT)
  ctl->muted = mute;
 if (left != HDAA_AMP_VOL_DEFAULT)
  ctl->left = left;
 if (right != HDAA_AMP_VOL_DEFAULT)
  ctl->right = right;

 if (ctl->forcemute) {
  lmute = 1;
  rmute = 1;
  left = 0;
  right = 0;
 } else {
  lmute = HDAA_AMP_LEFT_MUTED(ctl->muted);
  rmute = HDAA_AMP_RIGHT_MUTED(ctl->muted);
  left = ctl->left;
  right = ctl->right;
 }

 if (ctl->dir & HDAA_CTL_OUT)
  hdaa_audio_ctl_amp_set_internal(ctl->widget->devinfo, nid, ctl->index,
      lmute, rmute, left, right, 0);
 if (ctl->dir & HDAA_CTL_IN)
  hdaa_audio_ctl_amp_set_internal(ctl->widget->devinfo, nid, ctl->index,
      lmute, rmute, left, right, 1);
}
