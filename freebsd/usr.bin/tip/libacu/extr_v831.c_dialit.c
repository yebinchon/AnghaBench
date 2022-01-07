
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vaconfig {scalar_t__ vc_name; int vc_modem; int vc_rack; } ;
struct termios {int c_cflag; int c_lflag; } ;


 int ABORT ;
 int AC ;
 int B2400 ;
 int ETX ;
 int ICANON ;
 int ISIG ;
 int PARENB ;
 int PARODD ;
 int SI ;
 int STX ;
 int TCIOFLUSH ;
 int TCSANOW ;
 int cfsetispeed (struct termios*,int ) ;
 int cfsetospeed (struct termios*,int ) ;
 int close (int ) ;
 int errno ;
 int pc (int ) ;
 int printf (char*,...) ;
 int read (int ,char*,int) ;
 char* sanitize (char*) ;
 int sleep (int) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 int tcflush (int ,int ) ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;
 int v831_disconnect () ;
 struct vaconfig* vaconfig ;

__attribute__((used)) static int
dialit(char *phonenum, char *acu)
{
        struct vaconfig *vp;
 struct termios cntrl;
        char c;
        int i;

        phonenum = sanitize(phonenum);



        if (*phonenum == '<' && phonenum[1] == 0)
                return ('Z');
 for (vp = vaconfig; vp->vc_name; vp++)
  if (strcmp(vp->vc_name, acu) == 0)
   break;
 if (vp->vc_name == 0) {
  printf("Unable to locate dialer (%s)\n", acu);
  return ('K');
 }
 tcgetattr(AC, &cntrl);
 cfsetospeed(&cntrl, B2400);
 cfsetispeed(&cntrl, B2400);
 cntrl.c_cflag |= PARODD | PARENB;
 cntrl.c_lflag &= ~(ISIG | ICANON);
 tcsetattr(AC, TCSANOW, &cntrl);
 tcflush(AC, TCIOFLUSH);
        pc(STX);
 pc(vp->vc_rack);
 pc(vp->vc_modem);
 while (*phonenum && *phonenum != '<')
  pc(*phonenum++);
        pc(SI);
 pc(ETX);
        sleep(1);
        i = read(AC, &c, 1);



        if (i != 1)
  c = 'M';
        if (c == 'B' || c == 'G') {
                char cc, oc = c;

                pc(ABORT);
                read(AC, &cc, 1);



                c = oc;
                v831_disconnect();
        }
        close(AC);



        return (c);
}
