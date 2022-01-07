
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_client {int ec_revoked; int ec_evdev; } ;


 int EVDEV_LOCK_ASSERT (int ) ;

void
evdev_revoke_client(struct evdev_client *client)
{

 EVDEV_LOCK_ASSERT(client->ec_evdev);

 client->ec_revoked = 1;
}
