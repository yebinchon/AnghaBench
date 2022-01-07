
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int* c_cc; int c_lflag; } ;


 int ECHO ;
 int FLUSHO ;
 int ICANON ;
 int IEXTEN ;
 int PENDIN ;
 int TCSANOW ;
 size_t VINTR ;
 size_t VMIN ;
 size_t VQUIT ;
 size_t VTIME ;
 struct termios otty ;
 int std_in ;
 int tcsetattr (int ,int ,struct termios*) ;

__attribute__((used)) static void
set_tty(void)
{
 struct termios ntty;

 ntty = otty;
 ntty.c_lflag &= ~ICANON;
 ntty.c_lflag &= ~ECHO;
 ntty.c_cc[VMIN] = 1;
 ntty.c_cc[VTIME] = 0;

 ntty.c_cc[VINTR] = 07;
 ntty.c_cc[VQUIT] = 07;
 tcsetattr(std_in, TCSANOW, &ntty);
}
