
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct thread {int dummy; } ;
struct sockopt {int sopt_valsize; int * sopt_td; int sopt_val; int sopt_name; int sopt_level; int sopt_dir; } ;
struct socket {int so_state; int so_options; TYPE_2__* so_proto; } ;
struct sockaddr {int sa_len; } ;
struct TYPE_9__ {int typecookie; int const cmd; int arglen; int token; } ;
struct ng_mesg {TYPE_3__ header; scalar_t__ data; } ;
struct ng_ksocket_sockopt {int value; int name; int level; } ;
typedef TYPE_4__* priv_p ;
typedef int node_p ;
typedef void* ng_ID_t ;
typedef int item_p ;
typedef int int32_t ;
typedef int hook_p ;
struct TYPE_10__ {int flags; void* response_addr; int response_token; struct socket* so; } ;
struct TYPE_8__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_7__ {int (* pru_peeraddr ) (struct socket*,struct sockaddr**) ;int (* pru_sockaddr ) (struct socket*,struct sockaddr**) ;} ;


 int EALREADY ;
 int EINPROGRESS ;
 int EINVAL ;
 int ENOMEM ;
 int ENOTCONN ;
 int ENXIO ;
 int ERROUT (int) ;
 int EWOULDBLOCK ;
 int KSF_ACCEPTING ;
 int KSF_CONNECTING ;
 int M_NOWAIT ;
 int M_SONAME ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;
 void* NGI_RETADDR (int ) ;
 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_KSOCKET_MAX_OPTLEN ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 TYPE_4__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int SADATA_OFFSET ;
 int SOPT_GET ;
 int SOPT_SET ;
 int SO_ACCEPTCONN ;
 int SS_ISCONFIRMING ;
 int SS_ISCONNECTED ;
 int SS_ISCONNECTING ;
 int SS_NBIO ;
 int bcopy (struct sockaddr*,scalar_t__,int) ;
 struct thread* curthread ;
 int free (struct sockaddr*,int ) ;
 int ng_ksocket_accept (TYPE_4__* const) ;
 int sobind (struct socket* const,struct sockaddr* const,struct thread*) ;
 int soconnect (struct socket* const,struct sockaddr* const,struct thread*) ;
 int sogetopt (struct socket* const,struct sockopt*) ;
 int solisten (struct socket* const,int ,struct thread*) ;
 int sosetopt (struct socket* const,struct sockopt*) ;
 int stub1 (struct socket* const,struct sockaddr**) ;

__attribute__((used)) static int
ng_ksocket_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 struct thread *td = curthread;
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct socket *const so = priv->so;
 struct ng_mesg *resp = ((void*)0);
 int error = 0;
 struct ng_mesg *msg;
 ng_ID_t raddr;

 NGI_GET_MSG(item, msg);
 switch (msg->header.typecookie) {
 case 133:
  switch (msg->header.cmd) {
  case 135:
      {
   struct sockaddr *const sa
       = (struct sockaddr *)msg->data;


   if (msg->header.arglen < SADATA_OFFSET
       || msg->header.arglen < sa->sa_len)
    ERROUT(EINVAL);
   if (so == ((void*)0))
    ERROUT(ENXIO);


   error = sobind(so, sa, td);
   break;
      }
  case 129:
      {

   if (msg->header.arglen != sizeof(int32_t))
    ERROUT(EINVAL);
   if (so == ((void*)0))
    ERROUT(ENXIO);


   so->so_state |= SS_NBIO;
   error = solisten(so, *((int32_t *)msg->data), td);
   break;
      }

  case 136:
      {

   if (msg->header.arglen != 0)
    ERROUT(EINVAL);
   if (so == ((void*)0))
    ERROUT(ENXIO);


   if (!(so->so_options & SO_ACCEPTCONN))
    ERROUT(EINVAL);
   if (priv->flags & KSF_ACCEPTING)
    ERROUT(EALREADY);






   error = ng_ksocket_accept(priv);
   if (error != 0 && error != EWOULDBLOCK)
    ERROUT(error);
   priv->response_token = msg->header.token;
   raddr = priv->response_addr = NGI_RETADDR(item);
   break;
      }

  case 134:
      {
   struct sockaddr *const sa
       = (struct sockaddr *)msg->data;


   if (msg->header.arglen < SADATA_OFFSET
       || msg->header.arglen < sa->sa_len)
    ERROUT(EINVAL);
   if (so == ((void*)0))
    ERROUT(ENXIO);


   if ((so->so_state & SS_ISCONNECTING) != 0)
    ERROUT(EALREADY);
   if ((error = soconnect(so, sa, td)) != 0) {
    so->so_state &= ~SS_ISCONNECTING;
    ERROUT(error);
   }
   if ((so->so_state & SS_ISCONNECTING) != 0) {

    priv->response_token = msg->header.token;
    raddr = priv->response_addr = NGI_RETADDR(item);
    priv->flags |= KSF_CONNECTING;
    ERROUT(EINPROGRESS);
   }
   break;
      }

  case 132:
  case 130:
      {
   int (*func)(struct socket *so, struct sockaddr **nam);
   struct sockaddr *sa = ((void*)0);
   int len;


   if (msg->header.arglen != 0)
    ERROUT(EINVAL);
   if (so == ((void*)0))
    ERROUT(ENXIO);


   if (msg->header.cmd == 130) {
    if ((so->so_state
        & (SS_ISCONNECTED|SS_ISCONFIRMING)) == 0)
     ERROUT(ENOTCONN);
    func = so->so_proto->pr_usrreqs->pru_peeraddr;
   } else
    func = so->so_proto->pr_usrreqs->pru_sockaddr;


   if ((error = (*func)(so, &sa)) != 0)
    goto bail;
   len = (sa == ((void*)0)) ? 0 : sa->sa_len;


   NG_MKRESPONSE(resp, msg, len, M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    goto bail;
   }
   bcopy(sa, resp->data, len);

  bail:

   if (sa != ((void*)0))
    free(sa, M_SONAME);
   break;
      }

  case 131:
      {
   struct ng_ksocket_sockopt *ksopt =
       (struct ng_ksocket_sockopt *)msg->data;
   struct sockopt sopt;


   if (msg->header.arglen != sizeof(*ksopt))
    ERROUT(EINVAL);
   if (so == ((void*)0))
    ERROUT(ENXIO);


   NG_MKRESPONSE(resp, msg, sizeof(*ksopt)
       + NG_KSOCKET_MAX_OPTLEN, M_NOWAIT);
   if (resp == ((void*)0))
    ERROUT(ENOMEM);


   sopt.sopt_dir = SOPT_GET;
   sopt.sopt_level = ksopt->level;
   sopt.sopt_name = ksopt->name;
   sopt.sopt_td = ((void*)0);
   sopt.sopt_valsize = NG_KSOCKET_MAX_OPTLEN;
   ksopt = (struct ng_ksocket_sockopt *)resp->data;
   sopt.sopt_val = ksopt->value;
   if ((error = sogetopt(so, &sopt)) != 0) {
    NG_FREE_MSG(resp);
    break;
   }


   resp->header.arglen = sizeof(*ksopt)
       + sopt.sopt_valsize;
   break;
      }

  case 128:
      {
   struct ng_ksocket_sockopt *const ksopt =
       (struct ng_ksocket_sockopt *)msg->data;
   const int valsize = msg->header.arglen - sizeof(*ksopt);
   struct sockopt sopt;


   if (valsize < 0)
    ERROUT(EINVAL);
   if (so == ((void*)0))
    ERROUT(ENXIO);


   sopt.sopt_dir = SOPT_SET;
   sopt.sopt_level = ksopt->level;
   sopt.sopt_name = ksopt->name;
   sopt.sopt_val = ksopt->value;
   sopt.sopt_valsize = valsize;
   sopt.sopt_td = ((void*)0);
   error = sosetopt(so, &sopt);
   break;
      }

  default:
   error = EINVAL;
   break;
  }
  break;
 default:
  error = EINVAL;
  break;
 }
done:
 NG_RESPOND_MSG(error, node, item, resp);
 NG_FREE_MSG(msg);
 return (error);
}
