
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {int dummy; } ;


 int EEXIST ;
 int EPROTONOSUPPORT ;
 int IPPROTO_SEND ;
 int PRIV_NETINET_RAW ;
 int SEND_LOCK () ;
 int SEND_UNLOCK () ;
 struct socket* V_send_so ;
 int priv_check (struct thread*,int ) ;
 int send_recvspace ;
 int send_sendspace ;
 int soreserve (struct socket*,int ,int ) ;

__attribute__((used)) static int
send_attach(struct socket *so, int proto, struct thread *td)
{
 int error;

 SEND_LOCK();
 if (V_send_so != ((void*)0)) {
  SEND_UNLOCK();
  return (EEXIST);
 }

 error = priv_check(td, PRIV_NETINET_RAW);
 if (error) {
  SEND_UNLOCK();
  return(error);
 }

 if (proto != IPPROTO_SEND) {
  SEND_UNLOCK();
  return (EPROTONOSUPPORT);
 }
 error = soreserve(so, send_sendspace, send_recvspace);
 if (error) {
  SEND_UNLOCK();
  return(error);
 }

 V_send_so = so;
 SEND_UNLOCK();

 return (0);
}
