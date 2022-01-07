
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_iflag; int c_lflag; int c_oflag; int c_cflag; } ;


 int ECHO ;
 int ECHOE ;
 int ECHOK ;
 int ICANON ;
 int ICRNL ;
 int INPCK ;
 int IUCLC ;
 int OLCUC ;
 int ONLCR ;
 int OXTABS ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 TYPE_1__ mode ;
 scalar_t__ tgetflag (char*) ;

void
set_conversions(int usingupper)
{
 if (tgetflag("UC") || usingupper) {




 } else if (tgetflag("LC")) {




 }
 mode.c_iflag &= ~(PARMRK | INPCK);
 mode.c_lflag |= ICANON;
 if (tgetflag("EP")) {
  mode.c_cflag |= PARENB;
  mode.c_cflag &= ~PARODD;
 }
 if (tgetflag("OP")) {
  mode.c_cflag |= PARENB;
  mode.c_cflag |= PARODD;
 }




 mode.c_iflag |= ICRNL;
 mode.c_lflag |= ECHO;
 mode.c_oflag |= OXTABS;
 if (tgetflag("NL")) {



  mode.c_iflag &= ~ICRNL;
 }
 if (tgetflag("HD"))
  mode.c_lflag &= ~ECHO;
 if (tgetflag("pt"))
  mode.c_oflag &= ~OXTABS;
 mode.c_lflag |= (ECHOE | ECHOK);
}
