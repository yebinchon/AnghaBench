
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int FD ;
 int FIONREAD ;
 int MAXRETRY ;
 int TCIOFLUSH ;
 int TIOCCDTR ;
 int TIOCSDTR ;
 int bzero (char*,int) ;
 int cour_write (int ,char*,int) ;
 int ioctl (int ,int ,int*) ;
 int printf (char*,char*) ;
 int read (int ,char*,int) ;
 int sleep (int) ;
 scalar_t__ strchr (char*,char) ;
 int tcflush (int ,int ) ;

__attribute__((used)) static int
coursync(void)
{
 int already = 0;
 int len;
 char buf[40];

 while (already++ < MAXRETRY) {
  tcflush(FD, TCIOFLUSH);
  cour_write(FD, "\rAT Z\r", 6);
  bzero(buf, sizeof(buf));
  sleep(1);
  ioctl(FD, FIONREAD, &len);
  if (len) {
   len = read(FD, buf, sizeof(buf));




   if (strchr(buf, '0') ||
         (strchr(buf, 'O') && strchr(buf, 'K')))
    return(1);
  }




  sleep(1);
  cour_write(FD, "+++", 3);
  sleep(1);




  ioctl(FD, TIOCCDTR, 0);
  sleep(1);
  ioctl(FD, TIOCSDTR, 0);
 }
 cour_write(FD, "\rAT Z\r", 6);
 return (0);
}
