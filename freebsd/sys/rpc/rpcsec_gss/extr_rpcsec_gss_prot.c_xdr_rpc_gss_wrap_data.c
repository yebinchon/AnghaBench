
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct mbuf {int dummy; } ;
typedef scalar_t__ rpc_gss_service_t ;
typedef int gss_qop_t ;
typedef int gss_ctx_id_t ;
typedef int bool_t ;
typedef scalar_t__ OM_uint32 ;


 int FALSE ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ RNDUP (scalar_t__) ;
 int TRUE ;
 scalar_t__ gss_get_mic_mbuf (scalar_t__*,int ,int ,struct mbuf*,struct mbuf**) ;
 scalar_t__ gss_wrap_mbuf (scalar_t__*,int ,int ,int ,struct mbuf**,int*) ;
 int m_append (struct mbuf*,scalar_t__,char*) ;
 int m_cat (struct mbuf*,struct mbuf*) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ m_length (struct mbuf*,int *) ;
 int put_uint32 (struct mbuf**,scalar_t__) ;
 int rpc_gss_log_debug (char*) ;
 int rpc_gss_log_status (char*,int *,scalar_t__,scalar_t__) ;
 scalar_t__ rpc_gss_svc_integrity ;
 scalar_t__ rpc_gss_svc_privacy ;

bool_t
xdr_rpc_gss_wrap_data(struct mbuf **argsp,
        gss_ctx_id_t ctx, gss_qop_t qop,
        rpc_gss_service_t svc, u_int seq)
{
 struct mbuf *args, *mic;
 OM_uint32 maj_stat, min_stat;
 int conf_state;
 u_int len;
 static char zpad[4];

 args = *argsp;




 put_uint32(&args, seq);
 len = m_length(args, ((void*)0));

 if (svc == rpc_gss_svc_integrity) {

  maj_stat = gss_get_mic_mbuf(&min_stat, ctx, qop, args, &mic);
  if (maj_stat != GSS_S_COMPLETE) {
   rpc_gss_log_debug("gss_get_mic failed");
   m_freem(args);
   return (FALSE);
  }





  put_uint32(&args, len);




  len = m_length(mic, ((void*)0));
  put_uint32(&mic, len);
  if (len != RNDUP(len)) {
   m_append(mic, RNDUP(len) - len, zpad);
  }




  m_cat(args, mic);
 } else if (svc == rpc_gss_svc_privacy) {

  maj_stat = gss_wrap_mbuf(&min_stat, ctx, TRUE, qop,
      &args, &conf_state);
  if (maj_stat != GSS_S_COMPLETE) {
   rpc_gss_log_status("gss_wrap", ((void*)0),
       maj_stat, min_stat);
   return (FALSE);
  }




  len = m_length(args, ((void*)0));
  put_uint32(&args, len);
  if (len != RNDUP(len)) {
   m_append(args, RNDUP(len) - len, zpad);
  }
 }
 *argsp = args;
 return (TRUE);
}
