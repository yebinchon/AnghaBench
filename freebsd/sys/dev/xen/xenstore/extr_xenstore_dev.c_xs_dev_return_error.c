
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsd_sockmsg {int req_id; int tx_id; int len; int type; } ;
struct xs_dev_data {int lock; } ;
typedef int msg ;


 int EINVAL ;
 int KASSERT (int ,char*) ;
 int XS_ERROR ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int strlen (char const*) ;
 char* xs_dev_error_to_string (int) ;
 int xs_queue_reply (struct xs_dev_data*,char const*,int) ;

__attribute__((used)) static void
xs_dev_return_error(struct xs_dev_data *u, int error, int req_id, int tx_id)
{
 struct xsd_sockmsg msg;
 const char *payload;

 msg.type = XS_ERROR;
 msg.req_id = req_id;
 msg.tx_id = tx_id;
 payload = ((void*)0);


 payload = xs_dev_error_to_string(error);
 if (payload == ((void*)0))
  payload = xs_dev_error_to_string(EINVAL);
 KASSERT(payload != ((void*)0), ("Unable to find string for EINVAL errno"));

 msg.len = strlen(payload) + 1;

 mtx_lock(&u->lock);
 xs_queue_reply(u, (char *)&msg, sizeof(msg));
 xs_queue_reply(u, payload, msg.len);
 mtx_unlock(&u->lock);
}
