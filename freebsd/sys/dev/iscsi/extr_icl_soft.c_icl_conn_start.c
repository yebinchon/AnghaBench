
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockopt {int* sopt_val; int sopt_valsize; int sopt_name; int sopt_level; int sopt_dir; } ;
struct iscsi_bhs {int dummy; } ;
struct icl_conn {int ic_receive_len; int ic_disconnecting; int ic_max_data_segment_length; int ic_send_running; int ic_receive_running; int ic_send_cv; int ic_name; TYPE_1__* ic_socket; int ic_receive_state; } ;
typedef int opt ;
typedef int one ;
struct TYPE_7__ {int sb_flags; } ;
struct TYPE_6__ {TYPE_4__ so_rcv; TYPE_4__ so_snd; } ;


 int EINVAL ;
 int ICL_CONN_LOCK (struct icl_conn*) ;
 int ICL_CONN_STATE_BHS ;
 int ICL_CONN_UNLOCK (struct icl_conn*) ;
 int ICL_WARN (char*,int) ;
 int IPPROTO_TCP ;
 int ISCSI_DATA_DIGEST_SIZE ;
 int ISCSI_HEADER_DIGEST_SIZE ;
 int SB_AUTOSIZE ;
 int SOCKBUF_LOCK (TYPE_4__*) ;
 int SOCKBUF_UNLOCK (TYPE_4__*) ;
 int SOPT_SET ;
 int SO_RCV ;
 int SO_SND ;
 int TCP_NODELAY ;
 int bzero (struct sockopt*,int) ;
 int cv_signal (int *) ;
 int icl_receive_thread ;
 int icl_send_thread ;
 int icl_soft_conn_close (struct icl_conn*) ;
 int icl_soupcall_receive ;
 int icl_soupcall_send ;
 int kthread_add (int ,struct icl_conn*,int *,int *,int ,int ,char*,int ) ;
 size_t recvspace ;
 size_t sendspace ;
 int soreserve (TYPE_1__*,size_t,size_t) ;
 int sosetopt (TYPE_1__*,struct sockopt*) ;
 int soupcall_set (TYPE_1__*,int ,int ,struct icl_conn*) ;

__attribute__((used)) static int
icl_conn_start(struct icl_conn *ic)
{
 size_t minspace;
 struct sockopt opt;
 int error, one = 1;

 ICL_CONN_LOCK(ic);




 if (ic->ic_socket == ((void*)0)) {
  ICL_CONN_UNLOCK(ic);
  return (EINVAL);
 }

 ic->ic_receive_state = ICL_CONN_STATE_BHS;
 ic->ic_receive_len = sizeof(struct iscsi_bhs);
 ic->ic_disconnecting = 0;

 ICL_CONN_UNLOCK(ic);
 minspace = sizeof(struct iscsi_bhs) + ic->ic_max_data_segment_length +
     ISCSI_HEADER_DIGEST_SIZE + ISCSI_DATA_DIGEST_SIZE + 4;
 if (sendspace < minspace) {
  ICL_WARN("kern.icl.sendspace too low; must be at least %zd",
      minspace);
  sendspace = minspace;
 }
 if (recvspace < minspace) {
  ICL_WARN("kern.icl.recvspace too low; must be at least %zd",
      minspace);
  recvspace = minspace;
 }

 error = soreserve(ic->ic_socket, sendspace, recvspace);
 if (error != 0) {
  ICL_WARN("soreserve failed with error %d", error);
  icl_soft_conn_close(ic);
  return (error);
 }
 ic->ic_socket->so_snd.sb_flags |= SB_AUTOSIZE;
 ic->ic_socket->so_rcv.sb_flags |= SB_AUTOSIZE;




 bzero(&opt, sizeof(opt));
 opt.sopt_dir = SOPT_SET;
 opt.sopt_level = IPPROTO_TCP;
 opt.sopt_name = TCP_NODELAY;
 opt.sopt_val = &one;
 opt.sopt_valsize = sizeof(one);
 error = sosetopt(ic->ic_socket, &opt);
 if (error != 0) {
  ICL_WARN("disabling TCP_NODELAY failed with error %d", error);
  icl_soft_conn_close(ic);
  return (error);
 }





 SOCKBUF_LOCK(&ic->ic_socket->so_snd);
 soupcall_set(ic->ic_socket, SO_SND, icl_soupcall_send, ic);
 SOCKBUF_UNLOCK(&ic->ic_socket->so_snd);
 SOCKBUF_LOCK(&ic->ic_socket->so_rcv);
 soupcall_set(ic->ic_socket, SO_RCV, icl_soupcall_receive, ic);
 SOCKBUF_UNLOCK(&ic->ic_socket->so_rcv);




 ICL_CONN_LOCK(ic);
 ic->ic_send_running = ic->ic_receive_running = 1;
 ICL_CONN_UNLOCK(ic);
 error = kthread_add(icl_send_thread, ic, ((void*)0), ((void*)0), 0, 0, "%stx",
     ic->ic_name);
 if (error != 0) {
  ICL_WARN("kthread_add(9) failed with error %d", error);
  ICL_CONN_LOCK(ic);
  ic->ic_send_running = ic->ic_receive_running = 0;
  cv_signal(&ic->ic_send_cv);
  ICL_CONN_UNLOCK(ic);
  icl_soft_conn_close(ic);
  return (error);
 }
 error = kthread_add(icl_receive_thread, ic, ((void*)0), ((void*)0), 0, 0, "%srx",
     ic->ic_name);
 if (error != 0) {
  ICL_WARN("kthread_add(9) failed with error %d", error);
  ICL_CONN_LOCK(ic);
  ic->ic_receive_running = 0;
  cv_signal(&ic->ic_send_cv);
  ICL_CONN_UNLOCK(ic);
  icl_soft_conn_close(ic);
  return (error);
 }

 return (0);
}
