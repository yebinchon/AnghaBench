
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct svc_rpc_gss_client {int cl_state; int cl_mech; int cl_qop; int cl_ctx; } ;
struct TYPE_6__ {scalar_t__ oa_length; int oa_base; int oa_flavor; } ;
struct svc_req {TYPE_1__ rq_verf; } ;
typedef int nseq ;
struct TYPE_7__ {int length; int * value; } ;
typedef TYPE_2__ gss_buffer_desc ;
typedef int bool_t ;
typedef scalar_t__ OM_uint32 ;


 int CLIENT_STALE ;
 int FALSE ;
 scalar_t__ GSS_S_COMPLETE ;
 int KASSERT (int,char*) ;
 scalar_t__ MAX_AUTH_BYTES ;
 int RPCSEC_GSS ;
 int TRUE ;
 int bcopy (int *,int ,scalar_t__) ;
 scalar_t__ gss_get_mic (scalar_t__*,int ,int ,TYPE_2__*,TYPE_2__*) ;
 int gss_release_buffer (scalar_t__*,TYPE_2__*) ;
 int htonl (int ) ;
 int rpc_gss_log_debug (char*) ;
 int rpc_gss_log_status (char*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool_t
svc_rpc_gss_nextverf(struct svc_rpc_gss_client *client,
    struct svc_req *rqst, u_int seq)
{
 gss_buffer_desc signbuf;
 gss_buffer_desc mic;
 OM_uint32 maj_stat, min_stat;
 uint32_t nseq;

 rpc_gss_log_debug("in svc_rpc_gss_nextverf()");

 nseq = htonl(seq);
 signbuf.value = &nseq;
 signbuf.length = sizeof(nseq);

 maj_stat = gss_get_mic(&min_stat, client->cl_ctx, client->cl_qop,
     &signbuf, &mic);

 if (maj_stat != GSS_S_COMPLETE) {
  rpc_gss_log_status("gss_get_mic", client->cl_mech, maj_stat, min_stat);
  client->cl_state = CLIENT_STALE;
  return (FALSE);
 }

 KASSERT(mic.length <= MAX_AUTH_BYTES,
     ("MIC too large for RPCSEC_GSS"));

 rqst->rq_verf.oa_flavor = RPCSEC_GSS;
 rqst->rq_verf.oa_length = mic.length;
 bcopy(mic.value, rqst->rq_verf.oa_base, mic.length);

 gss_release_buffer(&min_stat, &mic);

 return (TRUE);
}
