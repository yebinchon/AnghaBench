
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTRL (char) ;
 int SIGTSTP ;
 int getpid () ;
 int kill (int ,int ) ;
 int raw () ;
 int unraw () ;

void
suspend(int c)
{
 unraw();
 kill(c == CTRL('y') ? getpid() : 0, SIGTSTP);
 raw();
}
