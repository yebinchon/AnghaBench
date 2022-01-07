
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_conn {scalar_t__ state; int handoff_done; int state_mutex; int min_posted_rx; } ;
struct icl_conn {int ic_maxtags; } ;


 int EINVAL ;
 scalar_t__ ISER_CONN_UP ;
 int ISER_ERR (char*,struct iser_conn*,scalar_t__) ;
 struct iser_conn* icl_to_iser_conn (struct icl_conn*) ;
 int iser_alloc_rx_descriptors (struct iser_conn*,int ) ;
 int iser_free_rx_descriptors (struct iser_conn*) ;
 int iser_post_recvm (struct iser_conn*,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
iser_conn_handoff(struct icl_conn *ic, int fd)
{
 struct iser_conn *iser_conn = icl_to_iser_conn(ic);
 int error = 0;

 sx_xlock(&iser_conn->state_mutex);
 if (iser_conn->state != ISER_CONN_UP) {
  error = EINVAL;
  ISER_ERR("iser_conn %p state is %d, teardown started\n",
    iser_conn, iser_conn->state);
  goto out;
 }

 error = iser_alloc_rx_descriptors(iser_conn, ic->ic_maxtags);
 if (error)
  goto out;

 error = iser_post_recvm(iser_conn, iser_conn->min_posted_rx);
 if (error)
  goto post_error;

 iser_conn->handoff_done = 1;

 sx_xunlock(&iser_conn->state_mutex);
 return (error);

post_error:
 iser_free_rx_descriptors(iser_conn);
out:
 sx_xunlock(&iser_conn->state_mutex);
 return (error);

}
