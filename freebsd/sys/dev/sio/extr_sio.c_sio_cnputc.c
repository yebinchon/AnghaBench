
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siocnstate {int dummy; } ;
struct consdev {scalar_t__ cn_unit; } ;
typedef int speed_t ;
typedef scalar_t__ Port_t ;


 scalar_t__ com_data ;
 int comdefaultrate ;
 int gdbdefaultrate ;
 int kdb_active ;
 int mtx_lock_spin (int *) ;
 int mtx_owned (int *) ;
 int mtx_unlock_spin (int *) ;
 int outb (scalar_t__,int) ;
 int sio_inited ;
 int sio_lock ;
 int siocnclose (struct siocnstate*,scalar_t__) ;
 scalar_t__ siocniobase ;
 int siocnopen (struct siocnstate*,scalar_t__,int ) ;
 int siocntxwait (scalar_t__) ;
 scalar_t__ siocnunit ;
 scalar_t__ siogdbiobase ;
 int spltty () ;
 int splx (int) ;

__attribute__((used)) static void
sio_cnputc(struct consdev *cd, int c)
{
 int need_unlock;
 int s;
 struct siocnstate sp;
 Port_t iobase;
 speed_t speed;

 if (cd != ((void*)0) && cd->cn_unit == siocnunit) {
  iobase = siocniobase;
  speed = comdefaultrate;
 } else {




  return;

 }
 s = spltty();
 need_unlock = 0;
 if (!kdb_active && sio_inited == 2 && !mtx_owned(&sio_lock)) {
  mtx_lock_spin(&sio_lock);
  need_unlock = 1;
 }
 siocnopen(&sp, iobase, speed);
 siocntxwait(iobase);
 outb(iobase + com_data, c);
 siocnclose(&sp, iobase);
 if (need_unlock)
  mtx_unlock_spin(&sio_lock);
 splx(s);
}
