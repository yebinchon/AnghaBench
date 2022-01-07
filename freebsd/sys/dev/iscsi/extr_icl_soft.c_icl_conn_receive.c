
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uio ;
struct uio {size_t uio_resid; } ;
struct socket {int dummy; } ;
struct mbuf {int dummy; } ;
struct icl_conn {struct socket* ic_socket; } ;


 int ICL_DEBUG (char*,...) ;
 int MSG_DONTWAIT ;
 int m_freem (struct mbuf*) ;
 int memset (struct uio*,int ,int) ;
 int soreceive (struct socket*,int *,struct uio*,struct mbuf**,int *,int*) ;

__attribute__((used)) static struct mbuf *
icl_conn_receive(struct icl_conn *ic, size_t len)
{
 struct uio uio;
 struct socket *so;
 struct mbuf *m;
 int error, flags;

 so = ic->ic_socket;

 memset(&uio, 0, sizeof(uio));
 uio.uio_resid = len;

 flags = MSG_DONTWAIT;
 error = soreceive(so, ((void*)0), &uio, &m, ((void*)0), &flags);
 if (error != 0) {
  ICL_DEBUG("soreceive error %d", error);
  return (((void*)0));
 }
 if (uio.uio_resid != 0) {
  m_freem(m);
  ICL_DEBUG("short read");
  return (((void*)0));
 }

 return (m);
}
