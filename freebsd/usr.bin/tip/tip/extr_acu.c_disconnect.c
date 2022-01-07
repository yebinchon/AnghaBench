
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* acu_disconnect ) () ;int acu_name; } ;


 int DV ;
 int HOST ;
 char* NOSTR ;
 int VERBOSE ;
 TYPE_1__* acu ;
 scalar_t__ boolean (int ) ;
 int conflag ;
 int logent (int ,char*,int ,char*) ;
 int printf (char*) ;
 int stub1 () ;
 int value (int ) ;

void
disconnect(char *reason)
{
 if (!conflag) {
  logent(value(HOST), "", DV, "call terminated");
  return;
 }
 if (reason == NOSTR) {
  logent(value(HOST), "", acu->acu_name, "call terminated");
  if (boolean(value(VERBOSE)))
   printf("\r\ndisconnecting...");
 } else
  logent(value(HOST), "", acu->acu_name, reason);
 (*acu->acu_disconnect)();
}
