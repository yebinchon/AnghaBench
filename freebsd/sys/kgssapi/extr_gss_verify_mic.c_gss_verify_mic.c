
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


 scalar_t__ GSS_S_NO_CONTEXT ;
 scalar_t__ KGSS_VERIFY_MIC (int const,scalar_t__*,struct mbuf*,struct mbuf*,int *) ;
 int MCLGET (struct mbuf*,int ) ;
 int MGET (struct mbuf*,int ,int ) ;
 int MLEN ;
 int MT_DATA ;
 int M_WAITOK ;
 int m_append (struct mbuf*,int ,int ) ;
 int m_freem (struct mbuf*) ;

OM_uint32
gss_verify_mic(OM_uint32 *minor_status,
    const gss_ctx_id_t ctx,
    const gss_buffer_t message_buffer,
    const gss_buffer_t token_buffer,
    gss_qop_t *qop_state)
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

 MGET(mic, M_WAITOK, MT_DATA);
 if (token_buffer->length > MLEN)
  MCLGET(mic, M_WAITOK);
 m_append(mic, token_buffer->length, token_buffer->value);

 maj_stat = KGSS_VERIFY_MIC(ctx, minor_status, m, mic, qop_state);

 m_freem(m);
 m_freem(mic);

 return (maj_stat);
}
