
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct termios {char* c_cc; } ;
typedef int buf ;
struct TYPE_4__ {char cerase; char kill; char werase; } ;
struct TYPE_3__ {char cerase; char kill; char werase; } ;


 char CERASE ;
 char CKILL ;
 char CWERASE ;
 size_t VERASE ;
 size_t VKILL ;
 size_t VWERASE ;
 scalar_t__ _POSIX_VDISABLE ;
 TYPE_2__ his_win ;
 TYPE_1__ my_win ;
 int p_error (char*) ;
 int read (int ,char*,int) ;
 int sockt ;
 int tcgetattr (int ,struct termios*) ;
 int write (int ,char*,int) ;

void
set_edit_chars(void)
{
 char buf[3];
 int cc;
 struct termios tio;

 tcgetattr(0, &tio);
 my_win.cerase = tio.c_cc[VERASE];
 my_win.kill = tio.c_cc[VKILL];
 my_win.werase = tio.c_cc[VWERASE];
 if (my_win.cerase == (char)_POSIX_VDISABLE)
  my_win.kill = CERASE;
 if (my_win.kill == (char)_POSIX_VDISABLE)
  my_win.kill = CKILL;
 if (my_win.werase == (char)_POSIX_VDISABLE)
  my_win.werase = CWERASE;
 buf[0] = my_win.cerase;
 buf[1] = my_win.kill;
 buf[2] = my_win.werase;
 cc = write(sockt, buf, sizeof(buf));
 if (cc != sizeof(buf) )
  p_error("Lost the connection");
 cc = read(sockt, buf, sizeof(buf));
 if (cc != sizeof(buf) )
  p_error("Lost the connection");
 his_win.cerase = buf[0];
 his_win.kill = buf[1];
 his_win.werase = buf[2];
}
