
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tty {int t_ispeed; int t_ospeed; int t_cflag; TYPE_2__* t_sc; } ;
struct termios {int c_ospeed; int c_ispeed; int c_cflag; int c_iflag; int * c_cc; } ;
struct TYPE_7__ {TYPE_3__* chan; TYPE_1__* board; } ;
typedef TYPE_2__ drv_t ;
typedef int bdrv_t ;
struct TYPE_8__ {int dtr; } ;
struct TYPE_6__ {int * sys; } ;


 int CRTSCTS ;




 int CSIZE ;
 int CSTOPB ;
 int CX_DEBUG2 (TYPE_2__*,char*) ;
 int CX_LOCK (int *) ;
 int CX_UNLOCK (int *) ;
 int EINVAL ;
 int IXANY ;
 int IXON ;
 int PARENB ;
 int PARODD ;
 size_t VSTART ;
 size_t VSTOP ;
 int cx_set_async_param (TYPE_3__*,int,int,int,int,int,int,int,int,int ,int ) ;
 int cx_set_dtr (TYPE_3__*,int) ;
 int splhigh () ;
 int splx (int) ;
 int ttyldoptim (struct tty*) ;

__attribute__((used)) static int cx_param (struct tty *tp, struct termios *t)
{
 drv_t *d;
 bdrv_t *bd;
 int s, bits, parity;

 d = tp->t_sc;
 bd = d->board->sys;

 s = splhigh ();
 CX_LOCK (bd);
 if (t->c_ospeed == 0) {

  cx_set_dtr (d->chan, 0);
  CX_UNLOCK (bd);
  splx (s);
  CX_DEBUG2 (d, ("cx_param (hangup)\n"));
  return 0;
 }
 CX_DEBUG2 (d, ("cx_param\n"));


 if (t->c_ospeed < 300 || t->c_ospeed > 256*1024) {
  CX_UNLOCK (bd);
  splx (s);
  return EINVAL;
 }
 if (t->c_ispeed && (t->c_ispeed < 300 || t->c_ispeed > 256*1024)) {
  CX_UNLOCK (bd);
  splx (s);
  return EINVAL;
 }


 tp->t_ispeed = t->c_ispeed = tp->t_ospeed = t->c_ospeed;
 tp->t_cflag = t->c_cflag;


 switch (t->c_cflag & CSIZE) {
 default:
 case 128: bits = 8; break;
 case 129: bits = 7; break;
 case 130: bits = 6; break;
 case 131: bits = 5; break;
 }

 parity = ((t->c_cflag & PARENB) ? 1 : 0) *
   (1 + ((t->c_cflag & PARODD) ? 0 : 1));


 if (! d->chan->dtr)
  cx_set_dtr (d->chan, 1);

 ttyldoptim (tp);
 cx_set_async_param (d->chan, t->c_ospeed, bits, parity, (t->c_cflag & CSTOPB),
  !(t->c_cflag & PARENB), (t->c_cflag & CRTSCTS),
  (t->c_iflag & IXON), (t->c_iflag & IXANY),
  t->c_cc[VSTART], t->c_cc[VSTOP]);
 CX_UNLOCK (bd);
 splx (s);
 return 0;
}
