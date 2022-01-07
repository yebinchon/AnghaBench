
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kobj_t ;
typedef scalar_t__ gss_ctx_id_t ;
typedef int gss_buffer_t ;


 int KGSS_DELETE (scalar_t__,int ) ;
 int M_GSSAPI ;
 int kobj_delete (int ,int ) ;

void
kgss_delete_context(gss_ctx_id_t ctx, gss_buffer_t output_token)
{

 KGSS_DELETE(ctx, output_token);
 kobj_delete((kobj_t) ctx, M_GSSAPI);
}
