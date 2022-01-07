
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int ;
struct mbuf {scalar_t__ m_len; } ;
typedef scalar_t__ rpc_gss_service_t ;
typedef scalar_t__ gss_qop_t ;
typedef int gss_ctx_id_t ;
typedef scalar_t__ bool_t ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ FALSE ;
 scalar_t__ GSS_S_COMPLETE ;
 int KASSERT (int,char*) ;
 scalar_t__ MHLEN ;
 int M_WAITOK ;
 scalar_t__ RNDUP (scalar_t__) ;
 scalar_t__ TRUE ;
 scalar_t__ get_uint32 (struct mbuf**) ;
 scalar_t__ gss_unwrap_mbuf (scalar_t__*,int ,struct mbuf**,scalar_t__*,scalar_t__*) ;
 scalar_t__ gss_verify_mic_mbuf (scalar_t__*,int ,struct mbuf*,struct mbuf*,scalar_t__*) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_pullup (struct mbuf*,scalar_t__) ;
 struct mbuf* m_split (struct mbuf*,scalar_t__,int ) ;
 int m_trim (struct mbuf*,scalar_t__) ;
 int rpc_gss_log_debug (char*) ;
 int rpc_gss_log_status (char*,int *,scalar_t__,scalar_t__) ;
 scalar_t__ rpc_gss_svc_integrity ;
 scalar_t__ rpc_gss_svc_privacy ;

bool_t
xdr_rpc_gss_unwrap_data(struct mbuf **resultsp,
   gss_ctx_id_t ctx, gss_qop_t qop,
   rpc_gss_service_t svc, u_int seq)
{
 struct mbuf *results, *message, *mic;
 uint32_t len, cklen;
 OM_uint32 maj_stat, min_stat;
 u_int seq_num, conf_state, qop_state;

 results = *resultsp;
 *resultsp = ((void*)0);

 message = ((void*)0);
 if (svc == rpc_gss_svc_integrity) {






  len = get_uint32(&results);
  message = results;
  results = m_split(results, len, M_WAITOK);
  if (!results) {
   m_freem(message);
   return (FALSE);
  }




  cklen = get_uint32(&results);
  if (!results) {
   m_freem(message);
   return (FALSE);
  }
  KASSERT(cklen <= MHLEN, ("unexpected large GSS-API checksum"));
  mic = results;
  if (cklen > mic->m_len) {
   mic = m_pullup(mic, cklen);
   if (!mic) {
    m_freem(message);
    return (FALSE);
   }
  }
  if (cklen != RNDUP(cklen))
   m_trim(mic, cklen);


  maj_stat = gss_verify_mic_mbuf(&min_stat, ctx,
      message, mic, &qop_state);
  m_freem(mic);

  if (maj_stat != GSS_S_COMPLETE || qop_state != qop) {
   m_freem(message);
   rpc_gss_log_status("gss_verify_mic", ((void*)0),
       maj_stat, min_stat);
   return (FALSE);
  }
 } else if (svc == rpc_gss_svc_privacy) {

  len = get_uint32(&results);
  if (!results)
   return (FALSE);


  message = results;
  if (len != RNDUP(len))
   m_trim(message, len);
  maj_stat = gss_unwrap_mbuf(&min_stat, ctx, &message,
      &conf_state, &qop_state);


  if (maj_stat != GSS_S_COMPLETE) {
   rpc_gss_log_status("gss_unwrap", ((void*)0),
       maj_stat, min_stat);
   return (FALSE);
  }
  if (qop_state != qop || conf_state != TRUE) {
   m_freem(results);
   return (FALSE);
  }
 }


 seq_num = get_uint32(&message);
 if (!message)
  return (FALSE);


 if (seq_num != seq) {
  rpc_gss_log_debug("wrong sequence number in databody");
  m_freem(message);
  return (FALSE);
 }

 *resultsp = message;
 return (TRUE);
}
