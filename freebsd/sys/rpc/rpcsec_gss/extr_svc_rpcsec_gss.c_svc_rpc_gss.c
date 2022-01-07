
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xdrproc_t ;
struct svc_rpc_gss_cookedcred {scalar_t__ cc_service; scalar_t__ cc_seq; struct svc_rpc_gss_client* cc_client; } ;
struct svc_rpc_gss_clientid {int dummy; } ;
struct TYPE_10__ {scalar_t__ service; int mechanism; void* qop; } ;
struct svc_rpc_gss_client {void* cl_qop; TYPE_5__ cl_rawcred; int cl_locked; int cl_lock; int cl_done_callback; int cl_refs; int cl_state; } ;
struct TYPE_9__ {struct svc_rpc_gss_cookedcred* svc_ah_private; int * svc_ah_ops; } ;
struct TYPE_6__ {int oa_length; int oa_base; } ;
struct svc_req {int rq_proc; TYPE_4__ rq_auth; void* rq_verf; struct svc_rpc_gss_cookedcred* rq_clntcred; TYPE_1__ rq_cred; } ;
struct TYPE_8__ {void* cb_verf; } ;
struct rpc_msg {TYPE_3__ rm_call; } ;
struct TYPE_7__ {scalar_t__ length; struct svc_rpc_gss_clientid* value; } ;
struct rpc_gss_init_res {scalar_t__ gc_version; int gc_proc; scalar_t__ gc_svc; scalar_t__ gc_seq; scalar_t__ gr_win; int gr_major; int gr_token; TYPE_2__ gc_handle; } ;
struct rpc_gss_cred {scalar_t__ gc_version; int gc_proc; scalar_t__ gc_svc; scalar_t__ gc_seq; scalar_t__ gr_win; int gr_major; int gr_token; TYPE_2__ gc_handle; } ;
typedef void* gss_qop_t ;
typedef int gr ;
typedef int gc ;
typedef enum auth_stat { ____Placeholder_auth_stat } auth_stat ;
typedef int caddr_t ;
typedef int XDR ;
typedef int OM_uint32 ;


 int AUTH_BADCRED ;
 int AUTH_BADVERF ;
 int AUTH_FAILED ;
 int AUTH_OK ;
 int AUTH_REJECTEDCRED ;
 int CLIENT_ESTABLISHED ;
 int GSS_S_COMPLETE ;
 scalar_t__ MAXSEQ ;
 int NULLPROC ;

 int RPCSEC_GSS_CREDPROBLEM ;
 int RPCSEC_GSS_CTXPROBLEM ;



 int RPCSEC_GSS_NODISPATCH ;
 scalar_t__ RPCSEC_GSS_VERSION ;
 int TRUE ;
 int XDR_DECODE ;
 int XDR_DESTROY (int *) ;
 void* _null_auth ;
 void* _rpc_gss_num_to_qop (int ,void*) ;
 int gss_release_buffer (int *,int *) ;
 int memset (struct rpc_gss_init_res*,int ,int) ;
 int refcount_acquire (int *) ;
 int rpc_gss_log_debug (char*) ;
 scalar_t__ rpc_gss_svc_integrity ;
 scalar_t__ rpc_gss_svc_none ;
 scalar_t__ rpc_gss_svc_privacy ;
 int svc_auth_gss_ops ;
 int svc_rpc_gss_accept_sec_context (struct svc_rpc_gss_client*,struct svc_req*,struct rpc_gss_init_res*,struct rpc_gss_init_res*) ;
 int svc_rpc_gss_callback (struct svc_rpc_gss_client*,struct svc_req*) ;
 int svc_rpc_gss_check_replay (struct svc_rpc_gss_client*,scalar_t__) ;
 struct svc_rpc_gss_client* svc_rpc_gss_create_client () ;
 struct svc_rpc_gss_client* svc_rpc_gss_find_client (struct svc_rpc_gss_clientid*) ;
 int svc_rpc_gss_forget_client (struct svc_rpc_gss_client*) ;
 int svc_rpc_gss_nextverf (struct svc_rpc_gss_client*,struct svc_req*,scalar_t__) ;
 int svc_rpc_gss_release_client (struct svc_rpc_gss_client*) ;
 int svc_rpc_gss_set_flavor (struct svc_rpc_gss_client*) ;
 int svc_rpc_gss_timeout_clients () ;
 int svc_rpc_gss_update_seq (struct svc_rpc_gss_client*,scalar_t__) ;
 int svc_rpc_gss_validate (struct svc_rpc_gss_client*,struct rpc_msg*,void**,int) ;
 int svc_sendreply (struct svc_req*,int ,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int xdr_free (int ,char*) ;
 int xdr_rpc_gss_cred (int *,struct rpc_gss_init_res*) ;
 scalar_t__ xdr_rpc_gss_init_res ;
 scalar_t__ xdr_void ;
 int xdrmem_create (int *,int ,int ,int ) ;

enum auth_stat
svc_rpc_gss(struct svc_req *rqst, struct rpc_msg *msg)

{
 OM_uint32 min_stat;
 XDR xdrs;
 struct svc_rpc_gss_cookedcred *cc;
 struct svc_rpc_gss_client *client;
 struct rpc_gss_cred gc;
 struct rpc_gss_init_res gr;
 gss_qop_t qop;
 int call_stat;
 enum auth_stat result;

 rpc_gss_log_debug("in svc_rpc_gss()");


 svc_rpc_gss_timeout_clients();


 rqst->rq_verf = _null_auth;


 if (rqst->rq_cred.oa_length <= 0)
  return (AUTH_BADCRED);

 memset(&gc, 0, sizeof(gc));

 xdrmem_create(&xdrs, rqst->rq_cred.oa_base,
     rqst->rq_cred.oa_length, XDR_DECODE);

 if (!xdr_rpc_gss_cred(&xdrs, &gc)) {
  XDR_DESTROY(&xdrs);
  return (AUTH_BADCRED);
 }
 XDR_DESTROY(&xdrs);

 client = ((void*)0);


 if (gc.gc_version != RPCSEC_GSS_VERSION) {
  result = AUTH_BADCRED;
  goto out;
 }


 if (gc.gc_proc == 128) {
  if (gc.gc_handle.length != 0) {
   result = AUTH_BADCRED;
   goto out;
  }
  client = svc_rpc_gss_create_client();
 } else {
  struct svc_rpc_gss_clientid *p;
  if (gc.gc_handle.length != sizeof(*p)) {
   result = AUTH_BADCRED;
   goto out;
  }
  p = gc.gc_handle.value;
  client = svc_rpc_gss_find_client(p);
  if (!client) {





   result = RPCSEC_GSS_CREDPROBLEM;
   goto out;
  }
 }
 cc = rqst->rq_clntcred;
 cc->cc_client = client;
 cc->cc_service = gc.gc_svc;
 cc->cc_seq = gc.gc_seq;





 if (gc.gc_proc != 128
     && gc.gc_proc != 131) {



  if (gc.gc_seq >= MAXSEQ) {
   result = RPCSEC_GSS_CTXPROBLEM;
   goto out;
  }




  if (gc.gc_svc != rpc_gss_svc_none &&
      gc.gc_svc != rpc_gss_svc_integrity &&
      gc.gc_svc != rpc_gss_svc_privacy) {
   result = AUTH_BADCRED;
   goto out;
  }
 }


 switch (gc.gc_proc) {

 case 128:
 case 131:
  if (rqst->rq_proc != NULLPROC) {
   result = AUTH_REJECTEDCRED;
   break;
  }

  memset(&gr, 0, sizeof(gr));
  if (!svc_rpc_gss_accept_sec_context(client, rqst, &gr, &gc)) {
   result = AUTH_REJECTEDCRED;
   break;
  }

  if (gr.gr_major == GSS_S_COMPLETE) {




   rqst->rq_verf = msg->rm_call.cb_verf;
   if (!svc_rpc_gss_nextverf(client, rqst, gr.gr_win)) {
    result = AUTH_REJECTEDCRED;
    break;
   }
  } else {
   rqst->rq_verf = _null_auth;
  }

  call_stat = svc_sendreply(rqst,
      (xdrproc_t) xdr_rpc_gss_init_res,
      (caddr_t) &gr);

  gss_release_buffer(&min_stat, &gr.gr_token);

  if (!call_stat) {
   result = AUTH_FAILED;
   break;
  }

  if (gr.gr_major == GSS_S_COMPLETE)
   client->cl_state = CLIENT_ESTABLISHED;

  result = RPCSEC_GSS_NODISPATCH;
  break;

 case 130:
 case 129:
  if (!svc_rpc_gss_check_replay(client, gc.gc_seq)) {
   result = RPCSEC_GSS_NODISPATCH;
   break;
  }

  if (!svc_rpc_gss_validate(client, msg, &qop, gc.gc_proc)) {
   result = RPCSEC_GSS_CREDPROBLEM;
   break;
  }





  rqst->rq_verf = msg->rm_call.cb_verf;
  if (!svc_rpc_gss_nextverf(client, rqst, gc.gc_seq)) {
   result = RPCSEC_GSS_CTXPROBLEM;
   break;
  }

  svc_rpc_gss_update_seq(client, gc.gc_seq);
  refcount_acquire(&client->cl_refs);
  rqst->rq_auth.svc_ah_ops = &svc_auth_gss_ops;
  rqst->rq_auth.svc_ah_private = cc;

  if (gc.gc_proc == 130) {




   sx_xlock(&client->cl_lock);
   if (!client->cl_done_callback) {
    client->cl_done_callback = TRUE;
    client->cl_qop = qop;
    client->cl_rawcred.qop = _rpc_gss_num_to_qop(
     client->cl_rawcred.mechanism, qop);
    if (!svc_rpc_gss_callback(client, rqst)) {
     result = AUTH_REJECTEDCRED;
     sx_xunlock(&client->cl_lock);
     break;
    }
   }
   sx_xunlock(&client->cl_lock);






   if (client->cl_locked) {
    if (client->cl_rawcred.service != gc.gc_svc) {
     result = AUTH_FAILED;
     break;
    } else if (client->cl_qop != qop) {
     result = AUTH_BADVERF;
     break;
    }
   }





   if (client->cl_qop != qop) {
    client->cl_qop = qop;
    client->cl_rawcred.qop = _rpc_gss_num_to_qop(
     client->cl_rawcred.mechanism, qop);
   }





   if (client->cl_rawcred.service != gc.gc_svc) {
    client->cl_rawcred.service = gc.gc_svc;
    svc_rpc_gss_set_flavor(client);
   }

   result = AUTH_OK;
  } else {
   if (rqst->rq_proc != NULLPROC) {
    result = AUTH_REJECTEDCRED;
    break;
   }

   call_stat = svc_sendreply(rqst,
       (xdrproc_t) xdr_void, (caddr_t) ((void*)0));

   if (!call_stat) {
    result = AUTH_FAILED;
    break;
   }

   svc_rpc_gss_forget_client(client);

   result = RPCSEC_GSS_NODISPATCH;
   break;
  }
  break;

 default:
  result = AUTH_BADCRED;
  break;
 }
out:
 if (client)
  svc_rpc_gss_release_client(client);

 xdr_free((xdrproc_t) xdr_rpc_gss_cred, (char *) &gc);
 return (result);
}
