
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct xsd_sockmsg {scalar_t__ len; int type; } ;
struct TYPE_2__ {int request_mutex; } ;


 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 TYPE_1__ xs ;
 int xs_read_reply (int *,scalar_t__*,void**) ;
 int xs_write_store (struct xsd_sockmsg*,scalar_t__) ;

int
xs_dev_request_and_reply(struct xsd_sockmsg *msg, void **result)
{
 uint32_t request_type;
 int error;

 request_type = msg->type;

 sx_xlock(&xs.request_mutex);
 if ((error = xs_write_store(msg, sizeof(*msg) + msg->len)) == 0)
  error = xs_read_reply(&msg->type, &msg->len, result);
 sx_xunlock(&xs.request_mutex);

 return (error);
}
