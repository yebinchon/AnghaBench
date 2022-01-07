
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct timeval {int dummy; } ;
struct TYPE_7__ {size_t ss_len; } ;
struct ct_data {char const* ct_waitchan; int ct_lock; TYPE_1__* ct_backchannelxprt; int ct_waitflag; int ct_mcallc; int ct_xid; TYPE_3__ ct_addr; struct timeval ct_wait; void* ct_closeit; } ;
typedef void* bool_t ;
struct TYPE_6__ {scalar_t__ cl_private; } ;
struct TYPE_5__ {struct ct_data* xp_p2; } ;
typedef TYPE_1__ SVCXPRT ;
typedef TYPE_2__ CLIENT ;


 int BYTES_PER_XDR_UNIT ;
 void* FALSE ;
 int PCATCH ;
 void* TRUE ;
 int htonl (int ) ;
 int memcpy (void*,TYPE_3__*,size_t) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ntohl (int ) ;
 int time_not_ok (struct timeval*) ;

__attribute__((used)) static bool_t
clnt_vc_control(CLIENT *cl, u_int request, void *info)
{
 struct ct_data *ct = (struct ct_data *)cl->cl_private;
 void *infop = info;
 SVCXPRT *xprt;

 mtx_lock(&ct->ct_lock);

 switch (request) {
 case 136:
  ct->ct_closeit = TRUE;
  mtx_unlock(&ct->ct_lock);
  return (TRUE);
 case 135:
  ct->ct_closeit = FALSE;
  mtx_unlock(&ct->ct_lock);
  return (TRUE);
 default:
  break;
 }


 if (info == ((void*)0)) {
  mtx_unlock(&ct->ct_lock);
  return (FALSE);
 }
 switch (request) {
 case 131:
  if (time_not_ok((struct timeval *)info)) {
   mtx_unlock(&ct->ct_lock);
   return (FALSE);
  }
  ct->ct_wait = *(struct timeval *)infop;
  break;
 case 141:
  *(struct timeval *)infop = ct->ct_wait;
  break;
 case 143:
  (void) memcpy(info, &ct->ct_addr, (size_t)ct->ct_addr.ss_len);
  break;
 case 142:




  memcpy(info, &ct->ct_addr, ct->ct_addr.ss_len);
  break;
 case 132:
  mtx_unlock(&ct->ct_lock);
  return (FALSE);
 case 138:
  *(uint32_t *)info = ct->ct_xid;
  break;
 case 128:


  ct->ct_xid = *(uint32_t *)info - 1;
  break;
 case 140:






  *(uint32_t *)info =
      ntohl(*(uint32_t *)(void *)(ct->ct_mcallc +
      4 * BYTES_PER_XDR_UNIT));
  break;

 case 130:
  *(uint32_t *)(void *)(ct->ct_mcallc +
      4 * BYTES_PER_XDR_UNIT) =
      htonl(*(uint32_t *)info);
  break;

 case 144:






  *(uint32_t *)info =
      ntohl(*(uint32_t *)(void *)(ct->ct_mcallc +
      3 * BYTES_PER_XDR_UNIT));
  break;

 case 133:
  *(uint32_t *)(void *)(ct->ct_mcallc +
      3 * BYTES_PER_XDR_UNIT) =
      htonl(*(uint32_t *)info);
  break;

 case 129:
  ct->ct_waitchan = (const char *)info;
  break;

 case 139:
  *(const char **) info = ct->ct_waitchan;
  break;

 case 134:
  if (*(int *) info)
   ct->ct_waitflag = PCATCH;
  else
   ct->ct_waitflag = 0;
  break;

 case 145:
  if (ct->ct_waitflag)
   *(int *) info = TRUE;
  else
   *(int *) info = FALSE;
  break;

 case 137:
  xprt = (SVCXPRT *)info;
  if (ct->ct_backchannelxprt == ((void*)0)) {
   xprt->xp_p2 = ct;
   ct->ct_backchannelxprt = xprt;
  }
  break;

 default:
  mtx_unlock(&ct->ct_lock);
  return (FALSE);
 }

 mtx_unlock(&ct->ct_lock);
 return (TRUE);
}
