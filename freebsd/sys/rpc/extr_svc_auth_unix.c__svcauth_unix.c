
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
typedef size_t u_int ;
struct xucred {size_t cr_ngroups; void** cr_groups; void* cr_uid; } ;
struct svc_req {int rq_verf; struct xucred* rq_clntcred; } ;
struct TYPE_3__ {int oa_base; scalar_t__ oa_length; } ;
struct TYPE_4__ {TYPE_1__ cb_cred; } ;
struct rpc_msg {TYPE_2__ rm_call; } ;
typedef int int32_t ;
typedef enum auth_stat { ____Placeholder_auth_stat } auth_stat ;
typedef int XDR ;


 int AUTH_BADCRED ;
 int AUTH_OK ;
 int BYTES_PER_XDR_UNIT ;
 void* IXDR_GET_INT32 (int *) ;
 void* IXDR_GET_UINT32 (int *) ;
 size_t MAX_MACHINE_NAME ;
 size_t NGRPS ;
 size_t RNDUP (size_t) ;
 int XDR_DECODE ;
 int XDR_DESTROY (int *) ;
 int * XDR_INLINE (int *,size_t) ;
 size_t XU_NGROUPS ;
 int _null_auth ;
 int printf (char*,long,long,size_t) ;
 int xdr_authunix_parms (int *,void**,struct xucred*) ;
 int xdrmem_create (int *,int ,size_t,int ) ;

enum auth_stat
_svcauth_unix(struct svc_req *rqst, struct rpc_msg *msg)
{
 enum auth_stat stat;
 XDR xdrs;
 int32_t *buf;
 uint32_t time;
 struct xucred *xcr;
 u_int auth_len;
 size_t str_len, gid_len;
 u_int i;

 xcr = rqst->rq_clntcred;
 auth_len = (u_int)msg->rm_call.cb_cred.oa_length;
 xdrmem_create(&xdrs, msg->rm_call.cb_cred.oa_base, auth_len,
     XDR_DECODE);
 buf = XDR_INLINE(&xdrs, auth_len);
 if (buf != ((void*)0)) {
  time = IXDR_GET_UINT32(buf);
  str_len = (size_t)IXDR_GET_UINT32(buf);
  if (str_len > MAX_MACHINE_NAME) {
   stat = AUTH_BADCRED;
   goto done;
  }
  str_len = RNDUP(str_len);
  buf += str_len / sizeof (int32_t);
  xcr->cr_uid = IXDR_GET_UINT32(buf);
  xcr->cr_groups[0] = IXDR_GET_UINT32(buf);
  gid_len = (size_t)IXDR_GET_UINT32(buf);
  if (gid_len > NGRPS) {
   stat = AUTH_BADCRED;
   goto done;
  }
  for (i = 0; i < gid_len; i++) {
   if (i + 1 < XU_NGROUPS)
    xcr->cr_groups[i + 1] = IXDR_GET_INT32(buf);
   else
    buf++;
  }
  if (gid_len + 1 > XU_NGROUPS)
   xcr->cr_ngroups = XU_NGROUPS;
  else
   xcr->cr_ngroups = gid_len + 1;





  if ((5 + gid_len) * BYTES_PER_XDR_UNIT + str_len > auth_len) {
   (void) printf("bad auth_len gid %ld str %ld auth %u\n",
       (long)gid_len, (long)str_len, auth_len);
   stat = AUTH_BADCRED;
   goto done;
  }
 } else if (! xdr_authunix_parms(&xdrs, &time, xcr)) {
  stat = AUTH_BADCRED;
  goto done;
 }

 rqst->rq_verf = _null_auth;
 stat = AUTH_OK;
done:
 XDR_DESTROY(&xdrs);

 return (stat);
}
