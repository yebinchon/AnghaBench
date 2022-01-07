
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int fore; int back; } ;
struct TYPE_7__ {int fore; int back; } ;
struct TYPE_9__ {int size; TYPE_2__ mv_norm; TYPE_1__ mv_rev; } ;
typedef TYPE_3__ vid_info_t ;
typedef int u_long ;
struct TYPE_10__ {int ts_teken; } ;
typedef TYPE_4__ teken_stat ;
struct vid_info {int dummy; } ;
struct tty {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_11__ {TYPE_4__* ts; } ;
typedef TYPE_5__ scr_stat ;
typedef scalar_t__ caddr_t ;



 int EINVAL ;
 int ENOIOCTL ;

 int scteken_te_to_sc_attr (int ) ;
 int teken_get_curattr (int *) ;
 int teken_get_defattr (int *) ;

__attribute__((used)) static int
scteken_ioctl(scr_stat *scp, struct tty *tp, u_long cmd, caddr_t data,
      struct thread *td)
{
 teken_stat *ts = scp->ts;
 vid_info_t *vi;
 int attr;

 switch (cmd) {
 case 128:
  *(int*)data =
      scteken_te_to_sc_attr(teken_get_curattr(&ts->ts_teken));
  return (0);
 case 129:
  vi = (vid_info_t *)data;
  if (vi->size != sizeof(struct vid_info))
   return EINVAL;

  attr = scteken_te_to_sc_attr(teken_get_defattr(&ts->ts_teken));
  vi->mv_norm.fore = attr & 0x0f;
  vi->mv_norm.back = (attr >> 4) & 0x0f;
  vi->mv_rev.fore = vi->mv_norm.back;
  vi->mv_rev.back = vi->mv_norm.fore;



  return (ENOIOCTL);
 }

 return (ENOIOCTL);
}
