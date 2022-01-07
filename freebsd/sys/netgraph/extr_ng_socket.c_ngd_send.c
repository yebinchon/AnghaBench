
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr_ng {int sg_len; char* sg_data; } ;
struct sockaddr {int dummy; } ;
struct ngpcb {TYPE_1__* sockdata; } ;
struct mbuf {int dummy; } ;
typedef int * hook_p ;
struct TYPE_5__ {int nd_hooks; } ;
struct TYPE_4__ {TYPE_2__* node; } ;


 int EDESTADDRREQ ;
 int EHOSTUNREACH ;
 int EINVAL ;
 int ENOTCONN ;
 int * LIST_FIRST (int *) ;
 int NG_HOOKSIZ ;
 int NG_NODE_NUMHOOKS (TYPE_2__*) ;
 int NG_SEND_DATA_FLAGS (int,int *,struct mbuf*,int ) ;
 int NG_WAITOK ;
 int bcopy (char*,char*,int) ;
 int m_freem (struct mbuf*) ;
 int * ng_findhook (TYPE_2__*,char*) ;
 struct ngpcb* sotongpcb (struct socket*) ;

__attribute__((used)) static int
ngd_send(struct socket *so, int flags, struct mbuf *m, struct sockaddr *addr,
  struct mbuf *control, struct thread *td)
{
 struct ngpcb *const pcbp = sotongpcb(so);
 struct sockaddr_ng *const sap = (struct sockaddr_ng *) addr;
 int len, error;
 hook_p hook = ((void*)0);
 char hookname[NG_HOOKSIZ];

 if ((pcbp == ((void*)0)) || (control != ((void*)0))) {
  error = EINVAL;
  goto release;
 }
 if (pcbp->sockdata == ((void*)0)) {
  error = ENOTCONN;
  goto release;
 }

 if (sap == ((void*)0))
  len = 0;
 else
  len = sap->sg_len - 2;





 if ((sap == ((void*)0)) || (len <= 0) || (*sap->sg_data == '\0')) {
  if (NG_NODE_NUMHOOKS(pcbp->sockdata->node) != 1) {
   error = EDESTADDRREQ;
   goto release;
  }




  hook = LIST_FIRST(&pcbp->sockdata->node->nd_hooks);
 } else {
  if (len >= NG_HOOKSIZ) {
   error = EINVAL;
   goto release;
  }





  bcopy(sap->sg_data, hookname, len);
  hookname[len] = '\0';


  hook = ng_findhook(pcbp->sockdata->node, hookname);
  if (hook == ((void*)0)) {
   error = EHOSTUNREACH;
   goto release;
  }
 }


 NG_SEND_DATA_FLAGS(error, hook, m, NG_WAITOK);

release:
 if (control != ((void*)0))
  m_freem(control);
 if (m != ((void*)0))
  m_freem(m);
 return (error);
}
