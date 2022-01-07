
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int client_shutdown () ;
 int fatalx (char*) ;

void
client_sig_handler(int sig, short event, void *p)
{
 switch (sig) {
 case 129:
 case 128:
  client_shutdown();
  break;
 default:
  fatalx("unexpected signal");
 }
}
