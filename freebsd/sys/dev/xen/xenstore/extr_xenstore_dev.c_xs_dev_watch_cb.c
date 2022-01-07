
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xsd_sockmsg {size_t len; scalar_t__ tx_id; scalar_t__ req_id; int type; } ;
struct xs_watch {scalar_t__ callback_data; } ;
struct xs_dev_watch {char const* token; TYPE_1__* user; } ;
typedef int msg ;
struct TYPE_2__ {int lock; } ;


 int M_WAITOK ;
 int M_XENSTORE ;
 int XS_WATCH_EVENT ;
 size_t XS_WATCH_PATH ;
 int free (char*,int ) ;
 char* malloc (size_t,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;
 int xs_queue_reply (TYPE_1__*,char*,int) ;

__attribute__((used)) static void
xs_dev_watch_cb(struct xs_watch *watch, const char **vec, unsigned int len)
{
 struct xs_dev_watch *dwatch;
 struct xsd_sockmsg msg;
 char *payload;

 dwatch = (struct xs_dev_watch *)watch->callback_data;
 msg.type = XS_WATCH_EVENT;
 msg.req_id = msg.tx_id = 0;
 msg.len = strlen(vec[XS_WATCH_PATH]) + strlen(dwatch->token) + 2;

 payload = malloc(msg.len, M_XENSTORE, M_WAITOK);
 strcpy(payload, vec[XS_WATCH_PATH]);
 strcpy(&payload[strlen(vec[XS_WATCH_PATH]) + 1], dwatch->token);
 mtx_lock(&dwatch->user->lock);
 xs_queue_reply(dwatch->user, (char *)&msg, sizeof(msg));
 xs_queue_reply(dwatch->user, payload, msg.len);
 mtx_unlock(&dwatch->user->lock);
 free(payload, M_XENSTORE);
}
