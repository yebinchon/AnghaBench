
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* NOSTR ;
 int SIGTERM ;
 int SIG_IGN ;
 int daemon_uid () ;
 int disconnect (char*) ;
 int exit (int ) ;
 int kill (int ,int ) ;
 int printf (char*,...) ;
 int signal (int ,int ) ;
 int tipout_pid ;
 int unexcl () ;
 int unraw () ;
 int uu_unlock (int ) ;
 int uucplock ;

void
tipabort(char *msg)
{

 signal(SIGTERM, SIG_IGN);
 kill(tipout_pid, SIGTERM);
 disconnect(msg);
 if (msg != NOSTR)
  printf("\r\n%s", msg);
 printf("\r\n[EOT]\r\n");
 daemon_uid();
 (void)uu_unlock(uucplock);
 unraw();
 unexcl();
 exit(0);
}
