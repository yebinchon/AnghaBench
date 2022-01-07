
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int fd_set ;
struct TYPE_2__ {int mfd; } ;


 int CLOCAL ;
 int CREAD ;
 int CS7 ;
 int FALSE ;
 int FD_SET (int ,int *) ;
 int FD_SETSIZE ;
 int FD_ZERO (int *) ;
 int FREAD ;
 int HUPCL ;
 int TIOCFLUSH ;
 int TIOCMBIC ;
 int TIOCMBIS ;
 int TIOCMGET ;
 int TIOCMSET ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int TRUE ;
 int debug (char*,...) ;
 int ioctl (int ,int ,int*) ;
 TYPE_1__ rodent ;
 scalar_t__ select (int ,int *,int *,int *,struct timeval*) ;
 int setmousespeed (int,int,int) ;
 int usleep (int) ;

__attribute__((used)) static int
pnpwakeup1(void)
{
    struct timeval timeout;
    fd_set fds;
    int i;






    debug("PnP COM device rev 1.0 probe...");


    ioctl(rodent.mfd, TIOCMGET, &i);
    i |= TIOCM_DTR;
    i &= ~TIOCM_RTS;
    ioctl(rodent.mfd, TIOCMSET, &i);
    usleep(240000);







    ioctl(rodent.mfd, TIOCMGET, &i);
    debug("modem status 0%o", i);
    if ((i & TIOCM_DSR) == 0)
 return (FALSE);


    setmousespeed(1200, 1200, (CS7 | CREAD | CLOCAL | HUPCL));
    i = TIOCM_DTR | TIOCM_RTS;
    ioctl(rodent.mfd, TIOCMBIC, &i);
    usleep(240000);
    i = TIOCM_DTR;
    ioctl(rodent.mfd, TIOCMBIS, &i);
    usleep(240000);


    i = FREAD;
    ioctl(rodent.mfd, TIOCFLUSH, &i);
    i = TIOCM_RTS;
    ioctl(rodent.mfd, TIOCMBIS, &i);


    FD_ZERO(&fds);
    FD_SET(rodent.mfd, &fds);
    timeout.tv_sec = 0;
    timeout.tv_usec = 240000;
    if (select(FD_SETSIZE, &fds, ((void*)0), ((void*)0), &timeout) > 0) {
 debug("pnpwakeup1(): valid response in first phase.");
 return (TRUE);
    }


    i = TIOCM_DTR | TIOCM_RTS;
    ioctl(rodent.mfd, TIOCMBIC, &i);
    usleep(240000);


    i = FREAD;
    ioctl(rodent.mfd, TIOCFLUSH, &i);
    i = TIOCM_DTR | TIOCM_RTS;
    ioctl(rodent.mfd, TIOCMBIS, &i);


    FD_ZERO(&fds);
    FD_SET(rodent.mfd, &fds);
    timeout.tv_sec = 0;
    timeout.tv_usec = 240000;
    if (select(FD_SETSIZE, &fds, ((void*)0), ((void*)0), &timeout) > 0) {
 debug("pnpwakeup1(): valid response in second phase.");
 return (TRUE);
    }

    return (FALSE);
}
