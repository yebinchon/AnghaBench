
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct xsd_sockmsg {int type; scalar_t__ len; scalar_t__ req_id; int tx_id; } ;
struct xs_transaction {int id; } ;
struct iovec {int iov_len; struct xsd_sockmsg* iov_base; } ;
typedef int msg ;
typedef enum xsd_sockmsg_type { ____Placeholder_xsd_sockmsg_type } xsd_sockmsg_type ;
struct TYPE_2__ {int request_mutex; } ;


 int KASSERT (int,char*) ;
 int M_XENSTORE ;
 scalar_t__ XS_ERROR ;
 int free (void*,int ) ;
 int printf (char*,int) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 TYPE_1__ xs ;
 int xs_get_error (void*) ;
 int xs_read_reply (int*,size_t*,void**) ;
 int xs_write_store (struct xsd_sockmsg*,int) ;

__attribute__((used)) static int
xs_talkv(struct xs_transaction t, enum xsd_sockmsg_type request_type,
    const struct iovec *iovec, u_int num_vecs, u_int *len, void **result)
{
 struct xsd_sockmsg msg;
 void *ret = ((void*)0);
 u_int i;
 int error;

 msg.tx_id = t.id;
 msg.req_id = 0;
 msg.type = request_type;
 msg.len = 0;
 for (i = 0; i < num_vecs; i++)
  msg.len += iovec[i].iov_len;

 sx_xlock(&xs.request_mutex);
 error = xs_write_store(&msg, sizeof(msg));
 if (error) {
  printf("xs_talkv failed %d\n", error);
  goto error_lock_held;
 }

 for (i = 0; i < num_vecs; i++) {
  error = xs_write_store(iovec[i].iov_base, iovec[i].iov_len);
  if (error) {
   printf("xs_talkv failed %d\n", error);
   goto error_lock_held;
  }
 }

 error = xs_read_reply(&msg.type, len, &ret);

error_lock_held:
 sx_xunlock(&xs.request_mutex);
 if (error)
  return (error);

 if (msg.type == XS_ERROR) {
  error = xs_get_error(ret);
  free(ret, M_XENSTORE);
  return (error);
 }


 KASSERT(msg.type == request_type, ("bad xenstore message type"));

 if (result)
  *result = ret;
 else
  free(ret, M_XENSTORE);

 return (0);
}
