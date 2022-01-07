
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c_iflag; int c_oflag; int c_cflag; int c_lflag; void** c_cc; } ;


 int BRKINT ;
 int BSDLY ;
 int CDISCARD ;
 int CEOF ;
 int CERASE ;
 int CFLUSH ;
 void* CHK (void*,int ) ;
 int CINTR ;
 int CKILL ;
 int CLNEXT ;
 int CLOCAL ;
 int CQUIT ;
 int CRDLY ;
 int CREAD ;
 int CRPRNT ;
 int CS8 ;
 int CSIZE ;
 int CSTART ;
 int CSTOP ;
 int CSTOPB ;
 int CSUSP ;
 int CWERASE ;
 int ECHO ;
 int ECHOCTL ;
 int ECHOE ;
 int ECHOK ;
 int ECHOKE ;
 int ECHONL ;
 int ECHOPRT ;
 int FFDLY ;
 int ICANON ;
 int ICRNL ;
 int IGNBRK ;
 int IGNCR ;
 int IGNPAR ;
 int IMAXBEL ;
 int INLCR ;
 int INPCK ;
 int ISIG ;
 int ISTRIP ;
 int IUCLC ;
 int IXANY ;
 int IXOFF ;
 int IXON ;
 int NLDLY ;
 int NOFLSH ;
 int OCRNL ;
 int OFDEL ;
 int OFILL ;
 int OLCUC ;
 int ONLCR ;
 int ONLRET ;
 int ONOCR ;
 int OPOST ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 int STDERR_FILENO ;
 int TABDLY ;
 int TCSADRAIN ;
 int TOSTOP ;
 size_t VDISCARD ;
 size_t VEOF ;
 size_t VERASE ;
 size_t VFLUSH ;
 size_t VINTR ;
 size_t VKILL ;
 size_t VLNEXT ;
 size_t VQUIT ;
 size_t VREPRINT ;
 size_t VSTART ;
 size_t VSTOP ;
 size_t VSUSP ;
 int VTDLY ;
 size_t VWERASE ;
 int XCASE ;
 TYPE_1__ mode ;
 int tcgetattr (int ,TYPE_1__*) ;
 int tcsetattr (int ,int ,TYPE_1__*) ;

void
reset_mode(void)
{
 tcgetattr(STDERR_FILENO, &mode);




 mode.c_cc[VEOF] = CHK(mode.c_cc[VEOF], CEOF);
 mode.c_cc[VERASE] = CHK(mode.c_cc[VERASE], CERASE);



 mode.c_cc[VINTR] = CHK(mode.c_cc[VINTR], CINTR);
 mode.c_cc[VKILL] = CHK(mode.c_cc[VKILL], CKILL);



 mode.c_cc[VQUIT] = CHK(mode.c_cc[VQUIT], CQUIT);



 mode.c_cc[VSTART] = CHK(mode.c_cc[VSTART], CSTART);
 mode.c_cc[VSTOP] = CHK(mode.c_cc[VSTOP], CSTOP);
 mode.c_cc[VSUSP] = CHK(mode.c_cc[VSUSP], CSUSP);




 mode.c_iflag &= ~(IGNBRK | PARMRK | INPCK | ISTRIP | INLCR | IGNCR






     | IXOFF);

 mode.c_iflag |= (BRKINT | IGNPAR | ICRNL | IXON



    );

 mode.c_oflag &= ~(0
     );

 mode.c_oflag |= (OPOST



    );

 mode.c_cflag &= ~(CSIZE | CSTOPB | PARENB | PARODD | CLOCAL);
 mode.c_cflag |= (CS8 | CREAD);
 mode.c_lflag &= ~(ECHONL | NOFLSH | TOSTOP






     );

 mode.c_lflag |= (ISIG | ICANON | ECHO | ECHOE | ECHOK






     );

 tcsetattr(STDERR_FILENO, TCSADRAIN, &mode);
}
