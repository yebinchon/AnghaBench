
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siocnstate {int dummy; } ;
struct consdev {scalar_t__ cn_unit; } ;
typedef int speed_t ;
typedef scalar_t__ Port_t ;


 int LSR_RXRDY ;
 scalar_t__ com_data ;
 scalar_t__ com_lsr ;
 int comdefaultrate ;
 int gdbdefaultrate ;
 int inb (scalar_t__) ;
 int siocnclose (struct siocnstate*,scalar_t__) ;
 scalar_t__ siocniobase ;
 int siocnopen (struct siocnstate*,scalar_t__,int ) ;
 scalar_t__ siocnunit ;
 scalar_t__ siogdbiobase ;
 int spltty () ;
 int splx (int) ;

__attribute__((used)) static int
sio_cngetc(struct consdev *cd)
{
 int c;
 Port_t iobase;
 int s;
 struct siocnstate sp;
 speed_t speed;

 if (cd != ((void*)0) && cd->cn_unit == siocnunit) {
  iobase = siocniobase;
  speed = comdefaultrate;
 } else {




  return (-1);

 }
 s = spltty();
 siocnopen(&sp, iobase, speed);
 if (inb(iobase + com_lsr) & LSR_RXRDY)
  c = inb(iobase + com_data);
 else
  c = -1;
 siocnclose(&sp, iobase);
 splx(s);
 return (c);
}
