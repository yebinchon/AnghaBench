
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {scalar_t__ kn_hook; } ;
struct TYPE_2__ {int si_note; } ;
struct evdev_client {TYPE_1__ ec_selp; } ;


 int knlist_remove (int *,struct knote*,int ) ;

__attribute__((used)) static void
evdev_kqdetach(struct knote *kn)
{
 struct evdev_client *client;

 client = (struct evdev_client *)kn->kn_hook;
 knlist_remove(&client->ec_selp.si_note, kn, 0);
}
