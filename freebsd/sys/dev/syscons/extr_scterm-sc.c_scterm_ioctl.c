
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int back; int fore; } ;
struct TYPE_9__ {int back; int fore; } ;
struct TYPE_13__ {int size; TYPE_3__ mv_rev; TYPE_1__ mv_norm; } ;
typedef TYPE_5__ vid_info_t ;
typedef int u_long ;
struct TYPE_12__ {int bg; int fg; } ;
struct TYPE_10__ {int bg; int fg; } ;
struct TYPE_14__ {int cur_attr; TYPE_4__ rev_color; TYPE_2__ std_color; } ;
typedef TYPE_6__ term_stat ;
struct vid_info {int dummy; } ;
struct tty {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_15__ {TYPE_6__* ts; } ;
typedef TYPE_7__ scr_stat ;
typedef scalar_t__ caddr_t ;



 int EINVAL ;
 int ENOIOCTL ;


__attribute__((used)) static int
scterm_ioctl(scr_stat *scp, struct tty *tp, u_long cmd, caddr_t data,
      struct thread *td)
{
 term_stat *tcp = scp->ts;
 vid_info_t *vi;

 switch (cmd) {
 case 128:

  *(int*)data = (tcp->cur_attr >> 8) & 0xff;
  return 0;
 case 129:
  vi = (vid_info_t *)data;
  if (vi->size != sizeof(struct vid_info))
   return EINVAL;
  vi->mv_norm.fore = tcp->std_color.fg;
  vi->mv_norm.back = tcp->std_color.bg;
  vi->mv_rev.fore = tcp->rev_color.fg;
  vi->mv_rev.back = tcp->rev_color.bg;



  return ENOIOCTL;
 }
 return ENOIOCTL;
}
