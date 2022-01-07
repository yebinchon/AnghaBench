
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;


 int FD ;
 int TCSAFLUSH ;
 int TIOCCDTR ;
 int TIOCNXCL ;
 int cfsetispeed (struct termios*,int ) ;
 int cfsetospeed (struct termios*,int ) ;
 int close (int) ;
 int ioctl (int,int ,int *) ;
 int printf (char*,int) ;
 int sleep (int) ;
 int tcgetattr (int,struct termios*) ;
 int tcsetattr (int,int ,struct termios*) ;

void
v831_disconnect(void)
{
 struct termios cntrl;

        sleep(2);



        if (FD > 0) {
                ioctl(FD, TIOCCDTR, 0);
  tcgetattr(FD, &cntrl);
  cfsetospeed(&cntrl, 0);
  cfsetispeed(&cntrl, 0);
  tcsetattr(FD, TCSAFLUSH, &cntrl);
                ioctl(FD, TIOCNXCL, ((void*)0));
        }
        close(FD);
}
