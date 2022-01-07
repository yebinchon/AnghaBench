
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int kn_data; int kn_flags; scalar_t__ kn_hook; } ;
struct input_event {int dummy; } ;
struct evdev_client {scalar_t__ ec_revoked; } ;


 int EVDEV_CLIENT_EMPTYQ (struct evdev_client*) ;
 int EVDEV_CLIENT_LOCKQ_ASSERT (struct evdev_client*) ;
 int EVDEV_CLIENT_SIZEQ (struct evdev_client*) ;
 int EV_EOF ;

__attribute__((used)) static int
evdev_kqread(struct knote *kn, long hint)
{
 struct evdev_client *client;
 int ret;

 client = (struct evdev_client *)kn->kn_hook;

 EVDEV_CLIENT_LOCKQ_ASSERT(client);

 if (client->ec_revoked) {
  kn->kn_flags |= EV_EOF;
  ret = 1;
 } else {
  kn->kn_data = EVDEV_CLIENT_SIZEQ(client) *
      sizeof(struct input_event);
  ret = !EVDEV_CLIENT_EMPTYQ(client);
 }
 return (ret);
}
