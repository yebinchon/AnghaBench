
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int c_oflag; } ;


 int OCRNL ;
 int ONLCR ;
 int ONLRET ;
 char PC ;
 int STDERR_FILENO ;
 int TAB3 ;
 int TCSADRAIN ;
 int cat (char*) ;
 int fflush (int ) ;
 scalar_t__ isreset ;
 TYPE_1__ oldmode ;
 int outc ;
 int putc (char,int ) ;
 int set_tabs () ;
 int sleep (int) ;
 int stderr ;
 int tcsetattr (int ,int ,TYPE_1__*) ;
 scalar_t__ tgetstr (char*,char**) ;
 int tputs (char*,int ,int ) ;

void
set_init(void)
{
 char *bp, buf[1024];
 int settle;

 bp = buf;
 if (tgetstr("pc", &bp) != 0)
  PC = buf[0];







 settle = set_tabs();

 if (isreset) {
  bp = buf;
  if (tgetstr("rs", &bp) != 0 || tgetstr("is", &bp) != 0) {
   tputs(buf, 0, outc);
   settle = 1;
  }
  bp = buf;
  if (tgetstr("rf", &bp) != 0 || tgetstr("if", &bp) != 0) {
   cat(buf);
   settle = 1;
  }
 }

 if (settle) {
  (void)putc('\r', stderr);
  (void)fflush(stderr);
  (void)sleep(1);
 }
}
