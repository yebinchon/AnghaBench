
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcflag_t ;
struct tty {int t_compatflags; } ;
struct termios {int c_iflag; int c_oflag; int c_lflag; int c_cflag; } ;


 int ANYP ;
 int CRTERA ;
 int CRTKIL ;
 int CS7 ;
 int CS8 ;
 int CSIZE ;
 int CTLECH ;
 int DECCTQ ;
 int ECHOCTL ;
 int ECHOE ;
 int ECHOKE ;
 int ECHOPRT ;
 int FLUSHO ;
 int HUPCL ;
 int IGNCR ;
 int IGNPAR ;
 int INLCR ;
 int ISTRIP ;
 int IXANY ;
 int IXOFF ;
 int LITOUT ;
 int MDMBUF ;
 int NOFLSH ;
 int NOHANG ;
 int OPOST ;
 int PARENB ;
 int PARMRK ;
 int PASS8 ;
 int PENDIN ;
 int PRTERA ;
 int RAW ;
 int TANDEM ;
 int TOSTOP ;

__attribute__((used)) static void
ttcompatsetlflags(struct tty *tp, struct termios *t)
{
 int flags = tp->t_compatflags;
 tcflag_t iflag = t->c_iflag;
 tcflag_t oflag = t->c_oflag;
 tcflag_t lflag = t->c_lflag;
 tcflag_t cflag = t->c_cflag;

 iflag &= ~(PARMRK|IGNPAR|IGNCR|INLCR);
 if (flags&CRTERA)
  lflag |= ECHOE;
 else
  lflag &= ~ECHOE;
 if (flags&CRTKIL)
  lflag |= ECHOKE;
 else
  lflag &= ~ECHOKE;
 if (flags&PRTERA)
  lflag |= ECHOPRT;
 else
  lflag &= ~ECHOPRT;
 if (flags&CTLECH)
  lflag |= ECHOCTL;
 else
  lflag &= ~ECHOCTL;
 if (flags&TANDEM)
  iflag |= IXOFF;
 else
  iflag &= ~IXOFF;
 if ((flags&DECCTQ) == 0)
  iflag |= IXANY;
 else
  iflag &= ~IXANY;
 if (flags & MDMBUF)
  cflag |= MDMBUF;
 else
  cflag &= ~MDMBUF;
 if (flags&NOHANG)
  cflag &= ~HUPCL;
 else
  cflag |= HUPCL;
 lflag &= ~(TOSTOP|FLUSHO|PENDIN|NOFLSH);
 lflag |= flags&(TOSTOP|FLUSHO|PENDIN|NOFLSH);
 cflag &= ~(CSIZE|PARENB);
 if (flags&(RAW|LITOUT|PASS8)) {
  cflag |= CS8;
  if (!(flags&(RAW|PASS8))
      || (flags&(RAW|PASS8|ANYP)) == (PASS8|ANYP))
   iflag |= ISTRIP;
  else
   iflag &= ~ISTRIP;
  if (flags&(RAW|LITOUT))
   oflag &= ~OPOST;
  else
   oflag |= OPOST;
 } else {
  cflag |= CS7|PARENB;
  iflag |= ISTRIP;
  oflag |= OPOST;
 }
 t->c_iflag = iflag;
 t->c_oflag = oflag;
 t->c_lflag = lflag;
 t->c_cflag = cflag;
}
