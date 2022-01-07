
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int fore; int back; } ;
struct TYPE_4__ {int fore; int back; } ;
struct TYPE_6__ {int size; TYPE_2__ mv_rev; TYPE_1__ mv_norm; } ;
typedef TYPE_3__ vid_info_t ;
typedef int u_long ;
struct vid_info {int dummy; } ;
struct tty {int dummy; } ;
struct thread {int dummy; } ;
typedef int scr_stat ;
typedef scalar_t__ caddr_t ;



 int EINVAL ;
 int ENOIOCTL ;

 int SC_NORM_ATTR ;

__attribute__((used)) static int
dumb_ioctl(scr_stat *scp, struct tty *tp, u_long cmd, caddr_t data,
    struct thread *td)
{
 vid_info_t *vi;

 switch (cmd) {
 case 128:
  *(int*)data = SC_NORM_ATTR;
  return 0;
 case 129:
  vi = (vid_info_t *)data;
  if (vi->size != sizeof(struct vid_info))
   return EINVAL;
  vi->mv_norm.fore = SC_NORM_ATTR & 0x0f;
  vi->mv_norm.back = (SC_NORM_ATTR >> 4) & 0x0f;
  vi->mv_rev.fore = SC_NORM_ATTR & 0x0f;
  vi->mv_rev.back = (SC_NORM_ATTR >> 4) & 0x0f;



  return ENOIOCTL;
 }
 return ENOIOCTL;
}
