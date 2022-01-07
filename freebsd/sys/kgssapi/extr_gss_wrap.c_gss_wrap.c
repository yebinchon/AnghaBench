
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
 scalar_t__ KGSS_WRAP (int const,scalar_t__*,int,int ,struct mbuf**,int*) ;
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
gss_wrap(OM_uint32 *minor_status,
    const gss_ctx_id_t ctx,
    int conf_req_flag,
    gss_qop_t qop_req,
    const gss_buffer_t input_message_buffer,
    int *conf_state,
    gss_buffer_t output_message_buffer)
{
 OM_uint32 maj_stat;
 struct mbuf *m;

 if (!ctx) {
  *minor_status = 0;
  return (GSS_S_NO_CONTEXT);
 }

 MGET(m, M_WAITOK, MT_DATA);
 if (input_message_buffer->length > MLEN)
  MCLGET(m, M_WAITOK);
 m_append(m, input_message_buffer->length, input_message_buffer->value);

 maj_stat = KGSS_WRAP(ctx, minor_status, conf_req_flag, qop_req,
     &m, conf_state);





 if (maj_stat == GSS_S_COMPLETE) {
  output_message_buffer->length = m_length(m, ((void*)0));
  output_message_buffer->value =
   malloc(output_message_buffer->length,
       M_GSSAPI, M_WAITOK);
  m_copydata(m, 0, output_message_buffer->length,
      output_message_buffer->value);
  m_freem(m);
 }

 return (maj_stat);
}
