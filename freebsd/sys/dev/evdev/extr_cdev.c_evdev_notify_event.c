
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct evdev_client {int ec_blocked; int ec_selected; int * ec_sigio; scalar_t__ ec_async; TYPE_1__ ec_selp; } ;


 int EVDEV_CLIENT_LOCKQ_ASSERT (struct evdev_client*) ;
 int KNOTE_LOCKED (int *,int ) ;
 int SIGIO ;
 int pgsigio (int **,int ,int ) ;
 int selwakeup (TYPE_1__*) ;
 int wakeup (struct evdev_client*) ;

void
evdev_notify_event(struct evdev_client *client)
{

 EVDEV_CLIENT_LOCKQ_ASSERT(client);

 if (client->ec_blocked) {
  client->ec_blocked = 0;
  wakeup(client);
 }
 if (client->ec_selected) {
  client->ec_selected = 0;
  selwakeup(&client->ec_selp);
 }
 KNOTE_LOCKED(&client->ec_selp.si_note, 0);

 if (client->ec_async && client->ec_sigio != ((void*)0))
  pgsigio(&client->ec_sigio, SIGIO, 0);
}
