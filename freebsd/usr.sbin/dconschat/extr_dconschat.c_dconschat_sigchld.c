
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kevent {int dummy; } ;
struct dcons_port {int infd; int outfd; } ;
struct TYPE_2__ {int zero; int kq; int traw; struct dcons_port* port; } ;


 size_t DCONS_CON ;
 int EVFILT_READ ;
 int EV_ADD ;
 int EV_SET (struct kevent*,int ,int ,int ,int ,int,void*) ;
 int NOTE_LOWAT ;
 int STDIN_FILENO ;
 int TCSADRAIN ;
 int kevent (int ,struct kevent*,int,int *,int ,int *) ;
 TYPE_1__ sc ;
 int snprintf (char*,int,char*) ;
 int strlen (char*) ;
 scalar_t__ tc_set ;
 int tcsetattr (int ,int ,int *) ;
 int write (int ,char*,int ) ;

__attribute__((used)) static void
dconschat_sigchld(int s)
{
 struct kevent kev;
 struct dcons_port *p;
 char buf[256];

 p = &sc.port[DCONS_CON];

 snprintf(buf, 256, "\r\n[child exit]\r\n");
 write(p->outfd, buf, strlen(buf));

 if (tc_set)
  tcsetattr(STDIN_FILENO, TCSADRAIN, &sc.traw);

 EV_SET(&kev, p->infd, EVFILT_READ, EV_ADD, NOTE_LOWAT, 1, (void *)p);
 kevent(sc.kq, &kev, 1, ((void*)0), 0, &sc.zero);
}
