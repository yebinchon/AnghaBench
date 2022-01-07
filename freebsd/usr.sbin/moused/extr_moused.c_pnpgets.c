
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int fd_set ;
struct TYPE_2__ {int mfd; } ;


 int FD_SET (int ,int *) ;
 int FD_SETSIZE ;
 int FD_ZERO (int *) ;
 int MAX (int,int ) ;
 int TIOCMBIS ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int bcopy (char*,char*,int) ;
 int debug (char*,int,...) ;
 int ioctl (int ,int ,int*) ;
 int pnpwakeup1 () ;
 int pnpwakeup2 () ;
 int read (int ,char*,int) ;
 TYPE_1__ rodent ;
 scalar_t__ select (int ,int *,int *,int *,struct timeval*) ;
 int usleep (int) ;

__attribute__((used)) static int
pnpgets(char *buf)
{
    struct timeval timeout;
    fd_set fds;
    int begin;
    int i;
    char c;

    if (!pnpwakeup1() && !pnpwakeup2()) {






 i = TIOCM_DTR | TIOCM_RTS;
 ioctl(rodent.mfd, TIOCMBIS, &i);
 return (0);
    }


    begin = -1;
    i = 0;
    usleep(240000);
    while (read(rodent.mfd, &c, 1) == 1) {

 buf[i++] = c;
 if ((c == 0x08) || (c == 0x28)) {
     debug("begin-id %02x", c);
     begin = i - 1;
     break;
 }
 debug("%c %02x", c, c);
 if (i >= 256)
     break;
    }
    if (begin < 0) {

 goto connect_idle;
    }

    ++c;
    for (;;) {
 FD_ZERO(&fds);
 FD_SET(rodent.mfd, &fds);
 timeout.tv_sec = 0;
 timeout.tv_usec = 240000;
 if (select(FD_SETSIZE, &fds, ((void*)0), ((void*)0), &timeout) <= 0)
     break;

 read(rodent.mfd, &buf[i], 1);
 if (buf[i++] == c)
     break;
 if (i >= 256)
     break;
    }
    if (begin > 0) {
 i -= begin;
 bcopy(&buf[begin], &buf[0], i);
    }

    debug("len:%d, '%-*.*s'", i, i, i, buf);

    if (buf[i - 1] == c)
 return (i);






connect_idle:


    return (MAX(i, 0));
}
