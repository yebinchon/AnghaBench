
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISCONNECT ;
 int FD ;
 char* NOSTR ;
 int sleep (int) ;
 int strlen (char*) ;
 int tipabort (char*) ;
 char* value (int ) ;
 int write (int ,char*,int ) ;

void
finish(int c)
{
 char *dismsg;

 if ((dismsg = value(DISCONNECT)) != NOSTR) {
  write(FD, dismsg, strlen(dismsg));
  sleep(5);
 }
 tipabort(NOSTR);
}
