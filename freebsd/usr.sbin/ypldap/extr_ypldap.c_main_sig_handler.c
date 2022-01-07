
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_child (int ,char*) ;
 int client_pid ;
 int fatalx (char*) ;
 int main_shutdown () ;

void
main_sig_handler(int sig, short event, void *p)
{
 int die = 0;

 switch (sig) {
 case 128:
 case 129:
  die = 1;

 case 131:
  if (check_child(client_pid, "ldap client")) {
   client_pid = 0;
   die = 1;
  }
  if (die)
   main_shutdown();
  break;
 case 130:

  break;
 default:
  fatalx("unexpected signal");
 }
}
