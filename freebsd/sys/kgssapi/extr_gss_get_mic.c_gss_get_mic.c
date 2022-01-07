
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mbuf {int dummy; } ;
typedef int gss_qop_t ;
typedef int gss_ctx_id_t ;
typedef TYPE_1__* gss_buffer_t ;
struct TYPE_4__ {int value; int length; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_NO_CONTEXT ;
 scalar_t__ KGSS_GET_MIC (int const,scalar_t__*,int ,struct mbuf*,struct mbuf**) ;
 int MCLGET (struct mbuf*,int ) ;
 int MGET (struct mbuf*,int ,int ) ;
 int MLEN ;
 int MT_DATA ;
 int M_GSSAPI ;
 int M_WAITOK ;
 int m_append (struct mbuf*,int ,int ) ;
 int m_copydata (struct mbuf*,int ,int ,int ) ;
 int m_freem (struct mbuf*) ;
 int m_length (struct mbuf*,int *) ;
 int malloc (int ,int ,int ) ;

OM_uint32
gss_get_mic(OM_uint32 *minor_status,
    const gss_ctx_id_t ctx,
    gss_qop_t qop_req,
    const gss_buffer_t message_buffer,
    gss_buffer_t message_token)
{
 OM_uint32 maj_stat;
 struct mbuf *m, *mic;

 if (!ctx) {
  *minor_status = 0;
  return (GSS_S_NO_CONTEXT);
 }

 MGET(m, M_WAITOK, MT_DATA);
 if (message_buffer->length > MLEN)
  MCLGET(m, M_WAITOK);
 m_append(m, message_buffer->length, message_buffer->value);

 maj_stat = KGSS_GET_MIC(ctx, minor_status, qop_req, m, &mic);

 m_freem(m);
 if (maj_stat == GSS_S_COMPLETE) {
  message_token->length = m_length(mic, ((void*)0));
  message_token->value = malloc(message_token->length,
      M_GSSAPI, M_WAITOK);
  m_copydata(mic, 0, message_token->length,
      message_token->value);
  m_freem(mic);
 }

 return (maj_stat);
}
