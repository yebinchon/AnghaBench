
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct evdev_client {int ec_buffer_mtx; int ec_sigio; TYPE_1__ ec_selp; int ec_evdev; int ec_revoked; } ;


 int EVDEV_LOCK (int ) ;
 int EVDEV_UNLOCK (int ) ;
 int M_EVDEV ;
 int evdev_dispose_client (int ,struct evdev_client*) ;
 int free (struct evdev_client*,int ) ;
 int funsetown (int *) ;
 int knlist_clear (int *,int ) ;
 int knlist_destroy (int *) ;
 int mtx_destroy (int *) ;
 int seldrain (TYPE_1__*) ;

__attribute__((used)) static void
evdev_dtor(void *data)
{
 struct evdev_client *client = (struct evdev_client *)data;

 EVDEV_LOCK(client->ec_evdev);
 if (!client->ec_revoked)
  evdev_dispose_client(client->ec_evdev, client);
 EVDEV_UNLOCK(client->ec_evdev);

 knlist_clear(&client->ec_selp.si_note, 0);
 seldrain(&client->ec_selp);
 knlist_destroy(&client->ec_selp.si_note);
 funsetown(&client->ec_sigio);
 mtx_destroy(&client->ec_buffer_mtx);
 free(client, M_EVDEV);
}
